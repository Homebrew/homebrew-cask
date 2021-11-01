cask "discord" do
  version "0.0.264"
  sha256 "f7e8e401d1d1526eef3176cd75e38807cf73e25c4fe76b42d65443ec56ed74cb"

  url "https://dl.discordapp.net/apps/osx/#{version}/Discord.dmg",
      verified: "dl.discordapp.net/"
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
