cask "mochi" do
  version "1.6.9"
  sha256 "8ab2fae2c47577fc7e12a0655398e99e8169d69a6235e855a0f53a750214a75a"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
