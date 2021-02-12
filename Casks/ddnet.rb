cask "ddnet" do
  version "15.3.1"
  sha256 "6c2f5891dc41ffb7ff028b07b3c54255066b8574a1008cd815f7044c8301df42"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
