cask "mochi" do
  version "1.6.12"
  sha256 "a8799cb09ed154286d8119e3f181bc4237018e59a53e5abb90fee6f466ff5cd5"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
