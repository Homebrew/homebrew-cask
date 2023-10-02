cask "discord" do
  version "0.0.278"
  sha256 "73ad29f115f946ff2dc7a8a8eb95dbab2cc924a68254378be4db7030b3485f93"

  url "https://dl.discordapp.net/apps/osx/#{version}/Discord.dmg",
      verified: "dl.discordapp.net/"
  name "Discord"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/stable?platform=osx"
    strategy :header_match
  end

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
