cask "insync" do
  version "3.3.2.40903"
  sha256 "ac748014eab1dceaa31cb096d9aa68c4cbf4bf6f28e9171d291ece2d51c39ff2"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
