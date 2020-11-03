cask "mochi" do
  version "1.6.13"
  sha256 "edbc2ef66e0e7d50d46a446e75cc123746c8c0a1b14e62e740a9f45ef53657f2"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
