cask "insync" do
  version "3.8.6.50504"
  sha256 "679c6a071db19d6661b744294a1f3a0cf7186cade87431225be5fdb815eaf13e"

  url "https://cdn.insynchq.com/builds/mac/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url "https://cdn.insynchq.com/web/webflow/js/mac_download_links.js"
    regex(/Insync[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  app "Insync.app"

  zap trash: [
    "/Library/LaunchDaemons/com.insynchq.insync.daemon.plist",
    "~/Library/Application Scripts/com.insynchq.insync",
    "~/Library/Application Scripts/com.insynchq.Insync.Insync-Finder-Integration",
    "~/Library/Application Support/Insync",
    "~/Library/Caches/com.insynchq.insync",
    "~/Library/Containers/com.insynchq.Insync.Insync-Finder-Integration",
    "~/Library/Group Containers/com.insynchq.insync",
    "~/Library/Saved Application State/com.insynchq.insync.savedState",
    "~/Library/WebKit/com.insynchq.insync",
  ]
end
