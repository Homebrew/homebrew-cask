cask "discord" do
  version "0.0.258"
  sha256 "1275e1f50430f05ed5aef3c4808eb2f2e6f86c7c93ecd8604798b35ac3f07b88"

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
