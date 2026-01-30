cask "artisan" do
  arch arm: "arm", intel: "intel"

  version "4.0.0"
  sha256 arm:   "068c4223d4bdb3d82dd3b348c1b84f03de5b0ea9382545ad64752477a278ebf2",
         intel: "2fc4ad31cebfb6bb00aeb0c2f4adf834f64084cf809840d6c5957e81a4824f3f"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{arch}-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Artisan.app"

  zap trash: [
    "~/Library/Application Support/artisan-scope",
    "~/Library/Preferences/org.artisan-scope.Artisan.plist",
    "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
  ]
end
