cask "artisan" do
  version "2.6.0"
  sha256 "b8b7243d354208584db9c2aa64750f35234083e5bfcff8e92155cce240f9732a"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
