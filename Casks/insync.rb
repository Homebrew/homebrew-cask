cask "insync" do
  version "3.6.0.50200"
  sha256 "ec3bd5c7fd0c87ca42a4376840703a0cff4be139221d887784f455f2a45b1938"

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
