cask "discord@canary" do
  version "0.0.1018"
  sha256 "301683f6687d2d39ad3d5d7c5e6e6adc04d51d99e7c160b95260d477bee9fdb3"

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
  depends_on macos: ">= :big_sur"

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
