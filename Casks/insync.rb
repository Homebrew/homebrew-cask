cask "insync" do
  version "3.2.5.40859"
  sha256 "6c00d2739c266ef565c90549bae4c08842595b8c6f1cbdb0c3060ea22448ee00"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true
  conflicts_with cask: "insync-beta"

  app "Insync.app"
end
