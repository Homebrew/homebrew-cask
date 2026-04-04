cask "insync" do
  version "3.9.9.60038"
  sha256 "cb719aa3eaabdd5021323404acb3c7c86cdfb745763d1e614f899dd8c67aa8b8"

  url "https://cdn.insynchq.com/builds/mac/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url "https://cdn.insynchq.com/web/webflow/js/mac_download_links.js"
    regex(/Insync[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
