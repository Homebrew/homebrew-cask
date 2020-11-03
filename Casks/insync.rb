cask "insync" do
  version "3.3.1.40899"
  sha256 "f61e022665ca5a7320aefb0bd916fe2d3abf47d51a00ff51ba12b67329723644"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
