cask "discord@canary" do
  version "0.0.1419"
  sha256 "72fd3c729b5f1877238a302d3ca2bd2b3ac960c92555aed3b34f9a9cd9f960a3"

  url "https://dl-canary.discordapp.net/apps/osx/#{version}/DiscordCanary.dmg"
  name "Discord Canary"
  desc "Voice and text chat software"
  homepage "https://canary.discord.com/"

  livecheck do
    url "https://discord.com/api/download/canary?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

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
