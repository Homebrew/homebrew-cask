cask "eve-online" do
  version "1.17.8"
  sha256 "ac55b802cc563213f97c2951d8fc818b6a360b367bbaf5f7197f53a55b2b5bc9"

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
    "~/Library/Logs/EVE Online",
    "~/Library/Preferences/com.ccpgames.eve-online-launcher.plist",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]
end
