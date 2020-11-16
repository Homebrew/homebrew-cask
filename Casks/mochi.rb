cask "mochi" do
  version "1.6.15"
  sha256 "75c6879084508b861c6c1c3900a913aaa73d6b4d37d0c670f1c33b6bd28ed351"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
