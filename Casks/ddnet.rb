cask "ddnet" do
  version "15.5.2"
  sha256 "c729daadc5474b560ad1cc23c0e2c971032f366b489782eca0c11d273da23670"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  livecheck do
    url "https://github.com/ddnet/ddnet/releases"
    strategy :github_latest
  end

  app "DDNet.app"
  app "DDNet-Server.app"
end
