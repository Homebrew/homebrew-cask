cask "insync" do
  version "3.3.0.40894"
  sha256 "05329dccd58b63d36e9d689733c44c7a7493517c0a597968675aa5356a862eff"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
