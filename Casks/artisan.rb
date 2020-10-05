cask "artisan" do
  version "2.4.2"
  sha256 "21601051052b1d7aa34a7e7d96c465a3ada83cad7b3528251ece07694a446d64"

  # github.com/artisan-roaster-scope/artisan/ was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast "https://github.com/artisan-roaster-scope/artisan/releases.atom"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
