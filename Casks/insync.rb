cask "insync" do
  version "3.2.3.40853"
  sha256 "c61a67e4c3eedaed7868c285ee2f3c404476bb39e0483015e2313a1082053efd"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true
  conflicts_with cask: "insync-beta"

  app "Insync.app"
end
