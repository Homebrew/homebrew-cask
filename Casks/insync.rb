cask "insync" do
  version "3.4.1.40977"
  sha256 "a94094f69db766b6d1dc547a8632d854e1c2e729f36b07ede4beab18f8fd9b7b"

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
