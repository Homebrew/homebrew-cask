cask "ddnet" do
  version "15.5.1"
  sha256 "1c254d2875f24cfdb148e273c2e440a14ab91e810be33d7ba37fdc01f306f0ba"

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
