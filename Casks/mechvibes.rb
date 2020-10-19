cask "mechvibes" do
  version "2.1.1"
  sha256 "aad610a9eba39869586eeb14b67c9ea6a29ea532763e413449b2f975e419c82f"

  # github.com/hainguyents13/mechvibes was verified as official when first introduced to the cask
  url "https://github.com/hainguyents13/mechvibes/releases/download/v#{version}/Mechvibes-#{version}.dmg"
  appcast "https://github.com/hainguyents13/mechvibes/releases.atom"
  name "Mechvibes"
  desc "Play mechanical keyboard sounds as you type"
  homepage "https://mechvibes.com/"

  app "Mechvibes.app"
end
