cask "ddnet" do
  version "15.5"
  sha256 "3cfa79ef841478c10816783ad45e3875e08c8acb298477b9e0f6b022f6fef310"

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
