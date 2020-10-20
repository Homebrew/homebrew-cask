cask "ddnet" do
  version "15.1.3"
  sha256 "804809b2b6054282bc0bf8c2250ac2726590a1b6e0bdc5f909f509a17beb16ee"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
