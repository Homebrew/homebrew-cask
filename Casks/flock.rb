cask "flock" do
  version "2.2.464"
  sha256 "3304b40671070356c8b5e22c2c241dd9f900481728342f3d83a6ff2a4dfe4ff5"

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  app "Flock.app"
end
