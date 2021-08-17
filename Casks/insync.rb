cask "insync" do
  version "3.5.1.50115"
  sha256 "ce689bc34914a01a28b3a9659e0c5a653239cdadb7ea565cc89bda906e4045f2"

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
