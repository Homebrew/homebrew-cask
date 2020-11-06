cask "aria2d" do
  version "1.3.5"
  sha256 "9bb019fb9b19b878403767fd07423633a0daaeb1ed6ca807c64043b3b4f76ce1"

  # githubusercontent.com/xjbeta/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version}.dmg"
  appcast "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml"
  name "Aria2D"
  desc "Aria2 GUI"
  homepage "https://github.com/xjbeta/Aria2D"

  depends_on macos: ">= :sierra"

  app "Aria2D.app"
end
