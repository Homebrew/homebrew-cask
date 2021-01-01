cask "discord" do
  version "0.0.260"
  sha256 "9cddabb13d862e45a0287591b38c13fde9b372edee7f7a538ba7e375c8b32088"

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg",
      verified: "cdn.discordapp.com/"
  name "Discord"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/stable/updates?platform=osx"
    regex(/"name"\s*:\s*"([^"]+)"/i)
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
