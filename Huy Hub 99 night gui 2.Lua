--[[
╭╮╱╭┳━━━┳━╮╭━╮ ╭╮╱╭┳━━━┳━╮╭━╮
┃┃╱┃┃╭━╮┃┃╰╯┃┃ ┃┃╱┃┃╭━╮┃┃╰╯┃┃
┃╰━╯┃┃╱┃┃╭╮╭╮┃ ┃╰━╯┃┃╱┃┃╭╮╭╮┃
┃╭━╮┃┃╱┃┃┃┃┃┃┃ ┃╭━╮┃┃╱┃┃┃┃┃┃┃
┃┃╱┃┃
                🚀 VOIDWARE X Huy Hub:D — Loader 🚀
----------------------------------------------------------------------------
  IMPORTANT:
  You must copy and use the FULL script below. Do NOT press on the link.:

  loadstring(game:HttpGet("https://raw.githubusercontent.com/vuonggggiahuyyy2013-ops/Huy-Huh/refs/heads/main/Huy%20Hub%2099%20night%20.lua", true))()

----------------------------------------------------------------------------
  For support head over to discord.gg/HuyVuong (Huy Hub hợp tác)
----------------------------------------------------------------------------
]]
repeat task.wait() until game:IsLoaded()
local meta = {
    [2619619496] = {
        title = "Bedwars",
        dev = "vwdev/vwrw.lua",
        script = "https://raw.githubusercontent.com/VapeVoidware/VWRewrite/main/NewMainScript.lua"
    },
    [7008097940] = {
       title = "Ink Game",
       dev = "vwdev/inkgame.lua",
       script = "https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/inkgame.lua"
    },
    [6331902150] = {
        title = "Forsaken",
        dev = "vwdev/forsaken.lua",
        script = "https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/forsaken.lua"
    },
    [7326934954] = {
        title = "99 Nights In The Forest",
        dev = "vwdev/nightsintheforest.lua",
        script = "https://raw.githubusercontent.com/vuonggggiahuyyy2013-ops/Huy-Huh/refs/heads/main/Huy%20Hub%2099%20night%20.lua"
    }
}
local data = meta[game.GameId]
if not data then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Huy Hub :D | Loader",
        Text = "Unsupported game :c",
        Duration = 15
    })
    return
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Huy Hub | Loader",
        Text = "Loading for "..tostring(data.title).."...",
        Duration = 15
    })
    local res
    if shared.VoidDev and data.dev ~= nil and pcall(function() return isfile(data.dev) end) then
        res = loadstring(readfile(data.dev))
    else
        res = loadstring(game:HttpGet(data.script, true))
    end
    if type(res) ~= "function" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Huy Hub Loading Error",
            Text = tostring(res),
            Duration = 15
        })
        task.delay(0.5, function()
            if shared.VoidDev then return end
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Huy Hub Loading Error",
                Text = "Please report this issue to erchodev#0 \n or in discord.gg/voidware",
                Duration = 15
            })
        end)
    else
        local suc, err = pcall(res)
        if not suc then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Huy Hub Main Error",
                Text = tostring(err),
                Duration = 15
            })
            task.delay(0.5, function()
                if shared.VoidDev then return end
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Huy Hub Main Error",
                    Text = "Please report this issue to erchodev#0 \n or in discord.gg/Huy Hub",
                    Duration = 15
                })
            end)
        end
    end

end

