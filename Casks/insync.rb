cask "insync" do
  version "3.3.4.40916"
  sha256 "aecc1d948c26b792a32ba71794c87d600f4f1237c7112b22224ef5c4f321d94b"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
