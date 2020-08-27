cask "insync" do
  version "3.2.6.40863"
  sha256 "c732aa4e3fc2bf58b051e3ce440f32ceeb2877681aa9c84ef1658fd3736ef2d6"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
