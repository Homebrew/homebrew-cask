cask "mochi" do
  version "1.6.11"
  sha256 "c8fb5aacaf58dc2774bb0b40a88ee354ae3b2a0bf762089dddd1ae529ac7f854"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
