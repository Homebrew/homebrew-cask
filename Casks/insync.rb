cask "insync" do
  version "3.7.9.50368"
  sha256 "c329885afe3eeba1118ffa4087706529ef09b932c0144c9f91dd26611efb2631"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
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
