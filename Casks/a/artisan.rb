cask "artisan" do
  version "2.10.4"
  sha256 "1e378633ef788925a0a2d1709acd32467a93fd9996467fff5db1e45ecaeb84e4"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Artisan.app"

  zap trash: [
    "~/Library/Application Support/artisan-scope",
    "~/Library/Preferences/org.artisan-scope.Artisan.plist",
    "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
  ]
end
