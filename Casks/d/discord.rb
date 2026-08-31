cask "discord" do
  on_big_sur :or_older do
    version "0.0.402"
    sha256 "568293a1f65fab2244b5acdac282b88b6f00efd87defd76cc77185d1b9caba64"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "0.0.410"
    sha256 "893ec758b3ae3fdc6f8c9bb197603d41042bff317aaa7d616f8ea64350d93b19"

    livecheck do
      url "https://updates.discord.com/distributions/app/manifests/latest?channel=stable&platform=osx&arch=x64"
      strategy :json do |json|
        json.dig("full", "host_version")&.join(".")
      end
    end
  end

  url "https://dl.discordapp.net/apps/osx/#{version}/Discord.dmg"
  name "Discord"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  auto_updates true
  depends_on :macos

  app "Discord.app"

  uninstall launchctl: "com.discord.discord.ShipIt",
            quit:      [
              "com.hnc.Discord",
              "com.hnc.Discord.helper.Plugin",
              "com.hnc.Discord.helper.Renderer",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hnc.discord.sfl*",
    "~/Library/Application Support/discord",
    "~/Library/Application%20Support/discord",
    "~/Library/Caches/com.hnc.Discord",
    "~/Library/Caches/com.hnc.Discord.ShipIt",
    "~/Library/Cookies/com.hnc.Discord.binarycookies",
    "~/Library/HTTPStorages/com.hnc.Discord",
    "~/Library/HTTPStorages/com.hnc.Discord.binarycookies",
    "~/Library/Preferences/ByHost/com.discord.discord.ShipIt.*.plist",
    "~/Library/Preferences/com.hnc.Discord.helper.plist",
    "~/Library/Preferences/com.hnc.Discord.plist",
    "~/Library/Saved Application State/com.hnc.Discord.savedState",
  ]
end
