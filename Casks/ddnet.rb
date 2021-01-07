cask "ddnet" do
  version "15.2.5"
  sha256 "16cb6b106e65360223fc2322fa73e6c7dd25ea951abbbe99b471fc14b317910f"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
