cask "insync" do
  version "3.5.2.50118"
  sha256 "577810b5daa99e31270997484b16e5335bd23e6a1e63f8f7692fd2eeb89271e4"

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
