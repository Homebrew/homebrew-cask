cask "mochi" do
  version "1.7.2"
  sha256 "8212462fc1aa783a426ef2065254e946130f00eb64b4314ae1fce50edd0c82a8"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
