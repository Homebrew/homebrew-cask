cask "discord@canary" do
  version "0.0.1346"
  sha256 "9120a3fe2fd6e2a6282e913f79152dbc510681c32fb97a4ef8d29a2c0a1ed89f"

  url "https://dl-canary.discordapp.net/apps/osx/#{version}/DiscordCanary.dmg"
  name "Discord Canary"
  desc "Voice and text chat software"
  homepage "https://canary.discord.com/"

  livecheck do
    url "https://discord.com/api/download/canary?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Discord Canary.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hnc.discordcanary.sfl*",
    "~/Library/Application Support/discordcanary",
    "~/Library/Caches/com.hnc.DiscordCanary",
    "~/Library/Caches/com.hnc.DiscordCanary.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordCanary.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordCanary.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordCanary.plist",
    "~/Library/Saved Application State/com.hnc.DiscordCanary.savedState",
  ]
end
