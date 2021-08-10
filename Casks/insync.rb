cask "insync" do
  version "3.5.0.50109"
  sha256 "3446e3dcd06b6927231388d8a68d26214e0d0fe000ab04072d566da5d095aaa0"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url :homepage
    regex(%r{/Insync[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "Insync.app"
end
