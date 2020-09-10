cask "flock" do
  version "2.2.430"
  sha256 "376b5e2a11a19ea9d1752e3884afea446488c976e612f69709413e0f15bd8011"

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  homepage "https://flock.com/"

  app "Flock.app"
end
