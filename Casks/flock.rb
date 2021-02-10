cask "flock" do
  version "2.2.472"
  sha256 "3a43d0577fc7b71e8fcb35842e1ae5f55303c136a1e5348bd6d91bc5c55e4569"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg",
      verified: "flock.co/"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  app "Flock.app"
end
