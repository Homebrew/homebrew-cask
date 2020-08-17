cask "mochi" do
  version "1.6.5"
  sha256 "6e12ae11071f86304d229d19e1586f7b7ae98609bfa5293a8c60dd27ae268aba"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
