cask "insync" do
  version "3.2.8.40877"
  sha256 "f9c35fccd005b0ab60ea7ae57db2c51c988a0137cbf9d63b50d3b6e956f3d812"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
