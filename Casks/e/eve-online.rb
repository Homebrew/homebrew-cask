cask "eve-online" do
  version "1.17.9"
  sha256 "fce5ccb0d07f9d3cd8ebec73d2d2d0b941886c5e5c91ffc7a25a6e2d806003ae"

  url "https://launcher.ccpgames.com/eve-online/release/darwin/universal/eve-online-darwin-universal-#{version}.zip"
  name "EVE Online"
  desc "Launcher for the space MMO game EVE Online"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.ccpgames.com/eve-online/release/darwin/universal/latest.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "eve-online.app"

  zap trash: [
    "~/Library/Application Support/CCP/EVE",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ccpgames.eve-online-launcher.sfl*",
    "~/Library/Application Support/EVE Online",
    "~/Library/Caches/CCP/EVE",
    "~/Library/Caches/com.ccpgames.eve-online-launcher*",
    "~/Library/HTTPStorages/com.ccpgames.eve-online-launcher",
    "~/Library/Logs/EVE Online",
    "~/Library/Preferences/com.ccpgames.eve-online-launcher.plist",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]
end
