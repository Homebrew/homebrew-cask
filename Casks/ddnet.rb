cask "ddnet" do
  version "15.3"
  sha256 "5fa7a0c6f876f5e3f34de1f5328984c38654f0befc5f03f04c989995ff2dcb5b"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
