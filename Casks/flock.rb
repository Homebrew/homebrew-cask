cask "flock" do
  version "2.2.454"
  sha256 "a267c1e2049f1774be286b5200474a024b975aaafd50bda35f62a562e1674aee"

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  app "Flock.app"
end
