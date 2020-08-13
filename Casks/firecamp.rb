cask "firecamp" do
  version "1.4.4"
  sha256 "de6e433037328709b9c0d2e7b321550945cc323d92e8d7b83f5e7f3bd9c5a5aa"

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast "https://firecamp.io/downloads/"
  name "Firecamp"
  homepage "https://firecamp.io/"

  app "Firecamp.app"
end
