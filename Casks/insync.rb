cask "insync" do
  version "3.7.12.50395"
  sha256 "fcb88ba20c5c4ed3b100ee74ba1547dca25d61d6a42c611495ab7a0207b64c59"

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
