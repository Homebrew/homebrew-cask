cask "ddnet" do
  version "15.4"
  sha256 "fe062e3df2170ad23c59d1714d1321ec74e5bfca939220a798638355bdba036c"

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
