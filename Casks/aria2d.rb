cask "aria2d" do
  version "1.3.6"
  sha256 "1840ce5b25571925cfec67635e3e48ce38306b856b509861f2ecfdfd0470cd7b"

  # githubusercontent.com/xjbeta/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version}.dmg"
  appcast "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml"
  name "Aria2D"
  desc "Aria2 GUI"
  homepage "https://github.com/xjbeta/Aria2D"

  depends_on macos: ">= :sierra"

  app "Aria2D.app"
end
