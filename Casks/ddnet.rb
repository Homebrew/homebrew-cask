cask "ddnet" do
  version "15.2.4"
  sha256 "feeff23e551fbae69be15ae95f2bd852efa53d3d4515248e888d64ab589c51a4"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
