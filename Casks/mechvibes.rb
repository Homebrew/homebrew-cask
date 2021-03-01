cask "mechvibes" do
  version "2.3.0"
  sha256 "83c70ac29de277024567f94f1e0a2aa2679e20ce7cdc027b02f06577442dfcf8"

  url "https://github.com/hainguyents13/mechvibes/releases/download/v#{version}/Mechvibes-#{version}.dmg",
      verified: "github.com/hainguyents13/mechvibes/"
  appcast "https://github.com/hainguyents13/mechvibes/releases.atom"
  name "Mechvibes"
  desc "Play mechanical keyboard sounds as you type"
  homepage "https://mechvibes.com/"

  app "Mechvibes.app"
end
