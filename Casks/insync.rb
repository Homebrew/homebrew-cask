cask "insync" do
  version "3.2.7.40868"
  sha256 "aabf29bcdf5c34c7bbb495024e0c6cd1dc4f723631f8bca8aafa40569fc7a274"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
