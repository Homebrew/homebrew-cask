cask "artisan" do
  version "2.4.2"
  sha256 "50c0e65b40fd68f5e0b1fce5948507abad8bde90f681ed01d63ba1bc7d60872c"

  # github.com/artisan-roaster-scope/artisan/ was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast "https://github.com/artisan-roaster-scope/artisan/releases.atom"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
