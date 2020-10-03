cask "mochi" do
  version "1.6.8"
  sha256 "c16d8f84aac4baa7ddcbe4efbc204aedc1caebb8ffd625fb4d29f76a4eef20cd"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
