cask "discord@canary" do
  version "0.0.1000"
  sha256 "237f44b64669c20da4de5552b94ba9749c2e6ddf2b541c2cd51ce9d9665c80ab"

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
