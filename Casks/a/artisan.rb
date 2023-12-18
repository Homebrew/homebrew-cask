cask "artisan" do
  version "2.10.0"
  sha256 "f2e7160bc1428497d268c02f5996a8c36e34d47bc313fbee86f98dfed742733d"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Artisan.app"

  zap trash: [
    "~/Library/Application Support/artisan-scope",
    "~/Library/Preferences/org.artisan-scope.Artisan.plist",
    "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
  ]
end
