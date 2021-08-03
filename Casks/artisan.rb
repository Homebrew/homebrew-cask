cask "artisan" do
  version "2.4.6"
  sha256 "4f354ca1c9fe2b9faf04b981fae30173a689ab079888d5e5e9a512f0dab146ad"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
