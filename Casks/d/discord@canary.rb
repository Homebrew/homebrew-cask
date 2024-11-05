cask "discord@canary" do
  version "0.0.622"
  sha256 "7924db6731c818e90926cdc7dc90a24e4e62a2b27b8e9fd4bea3c8254d065b73"

  url "https://dl-canary.discordapp.net/apps/osx/#{version}/DiscordCanary.dmg",
      verified: "dl-canary.discordapp.net/"
  name "Discord Canary"
  desc "Voice and text chat software"
  homepage "https://canary.discord.com/"

  livecheck do
    url "https://discord.com/api/download/canary?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Discord Canary.app"

  zap trash: [
    "~/Library/Application Support/discordcanary",
    "~/Library/Caches/com.hnc.DiscordCanary",
    "~/Library/Caches/com.hnc.DiscordCanary.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordCanary.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordCanary.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordCanary.plist",
    "~/Library/Saved Application State/com.hnc.DiscordCanary.savedState",
  ]
end
