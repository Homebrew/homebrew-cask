cask "ddnet" do
  version "15.2.3"
  sha256 "2438a8c63d6373b1c3edca36449d0381cab0b572653143f070934870192d1fab"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  app "DDNet.app"
  app "DDNet-Server.app"
end
