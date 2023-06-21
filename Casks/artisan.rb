cask "artisan" do
  version "2.8.4"
  sha256 "9279a3b19497249ea48683ec3676081fe722ceff74122585d9f3d325031aa653"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :catalina"

  app "Artisan.app"
end
