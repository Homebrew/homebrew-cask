cask "insync" do
  version "3.4.2.40983"
  sha256 "870b6c6d105d480cf1f69e44e3d9cba72df3c67bf52f261e54d1033303db5a6b"

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
