cask "roblox" do
  version "9db70406e6074aa2"
  sha256 "no_check"
  
  url "https://setup.rbxcdn.com/mac/version-9db70406e6074aa2-Roblox.dmg"
  name "Roblox"
  desc "Multiplayer online game"
  
  auto_updates false
  
  app "Roblox.app"
  
  zap trash:
  "~/Library/Roblox"
  "~/Library/Preferences/com.Roblox.plist"
  "~/Library/Preferences/com.RobloxPlayer.plist"
  "~/Library/Logs/Roblox"
  "~/Library/Caches/com.Roblox.Roblox"
