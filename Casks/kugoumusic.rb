cask "kugoumusic" do
  version "3.0.2"
  sha256 "cb6ddcb3284c252a81cdf287a203fe126fbc3d62ae82528f6dbe84954bcba556"

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast "http://download.kugou.com/mac.html"
  name "Kugou Music"
  homepage "https://www.kugou.com/"

  app "KugouMusic.app"
end
