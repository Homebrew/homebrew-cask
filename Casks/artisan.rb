cask "artisan" do
  version "2.4.2"
  sha256 "3abdc8dc2f4db568da5405be0de36e138bb5d11ee13abac801b3c28bf29b9c45"

  # github.com/artisan-roaster-scope/artisan/ was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast "https://github.com/artisan-roaster-scope/artisan/releases.atom"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
