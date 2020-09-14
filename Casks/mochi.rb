cask "mochi" do
  version "1.6.7"
  sha256 "759a59ba9c5bf1fb978c8cbb1050c03453413e1ee394c3fe714858a9ec950ba3"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
