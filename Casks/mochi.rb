cask "mochi" do
  version "1.7.0"
  sha256 "87c1e5d65298809f868fbec3c0d35f696b5114ffb24f53d3c71bd867c3a9887b"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
