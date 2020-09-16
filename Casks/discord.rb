cask "discord" do
  version "0.0.259"
  sha256 "927b7174671aeede430e5a71f9a8eee1991e2dab5309a8ee623dd1fb04706517"

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  appcast "https://discordapp.com/api/stable/updates?platform=osx"
  name "Discord"
  desc "Voice and text chat software"
  homepage "https://discordapp.com/"

  auto_updates true

  app "Discord.app"

  zap trash: [
    "~/Library/Application Support/discord",
    "~/Library/Caches/com.hnc.Discord",
    "~/Library/Caches/com.hnc.Discord.ShipIt",
    "~/Library/Cookies/com.hnc.Discord.binarycookies",
    "~/Library/Preferences/com.hnc.Discord.helper.plist",
    "~/Library/Preferences/com.hnc.Discord.plist",
    "~/Library/Saved Application State/com.hnc.Discord.savedState",
  ]
end
