cask "artisan" do
  version "2.8.2"
  sha256 "80ad57de77514dda9361d0add9a0ee4444d0da55f7832b69f68140893adf9f93"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :catalina"

  app "Artisan.app"
end
