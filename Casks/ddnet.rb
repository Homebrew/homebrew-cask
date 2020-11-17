cask "ddnet" do
  version "15.2.2"
  sha256 "9415bfeae8c064dbefad65a2547fe7085927126aa701236e4bfa934391001291"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
