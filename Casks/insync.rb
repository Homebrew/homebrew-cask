cask "insync" do
  version "3.2.9.40883"
  sha256 "c83cb07ec72c56affd934d7b6cb7a1f6c2f5348ef5d081d0769653af403c85f3"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
