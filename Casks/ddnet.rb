cask "ddnet" do
  version "15.3.2"
  sha256 "916a956e88728f6d182cf7ed8149889cc0f9aac5a0df7b2a9a367c2bcd01fd59"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
