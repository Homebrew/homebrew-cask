cask "mochi" do
  version "1.6.10"
  sha256 "2e78e75a6880c8d819e12abb04547aaeebcd1e0b34cc44e587ce38a7dd42be57"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
