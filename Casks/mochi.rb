cask "mochi" do
  version "1.6.2"
  sha256 "9b932d4eb38e1bd8d934eafea52b91972c211a9d3e11e476934dca1fda3f97ee"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
