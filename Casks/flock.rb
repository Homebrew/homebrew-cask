cask "flock" do
  version "2.2.460"
  sha256 "b31b843259089e6ca5a47c0bce5c723e5acfb1587885025e4978de9c0ed68bd2"

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  app "Flock.app"
end
