cask "powerword" do
  version "1.1.4,1.0.1"
  sha256 "d058d76732cbcb4f292f98a8e870501b11222a7e461dad5ef23965c16aa2ea90"

  url "https://download.iciba.com/mac/mac#{version.csv.second}/PowerWord.dmg"
  name "PowerWord"
  name "金山词霸"
  homepage "http://cp.iciba.com/mac/"

  app "金山词霸.app"
end
