cask "discord@canary" do
  version "0.0.1594"
  sha256 "6e541c9ab39797ffb391bea0e710521bd33eedd36f0a0a5978d408b57227c076"

  url "https://canary.dl2.discordapp.net/distro/app/canary/osx/universal/#{version}/DiscordCanary.dmg"
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

  uninstall launchctl: "com.discord.discord.ShipIt",
            quit:      "com.hnc.DiscordCanary"

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
