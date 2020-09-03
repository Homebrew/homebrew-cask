cask "mochi" do
  version "1.6.6"
  sha256 "f59ed35b33647d9e6c43b69a267aa400c9c3837fc8b54d0750244c33b5ef1947"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
