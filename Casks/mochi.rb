cask "mochi" do
  version "1.7.1"
  sha256 "7b87fb1b1360c595c56a591c037a47e4ad21e4743ac7cb07151b1bed8283d5d2"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
