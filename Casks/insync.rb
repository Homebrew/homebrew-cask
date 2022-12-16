cask "insync" do
  version "3.8.3.50473"
  sha256 "61d4f088f103bdad709ca671adbb578dba6ea1abb4b8ac441d2c272714d9ca74"

  url "http://cdn.insynchq.com/builds/mac/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url :homepage
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
