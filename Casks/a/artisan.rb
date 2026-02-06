cask "artisan" do
  arch arm: "arm", intel: "intel"

  version "4.0.2"
  sha256 arm:   "dff6757058d3b55ac249d339f59ebe69bf72c0777d6cd170dbb1d0caf3221d50",
         intel: "6ef4833ff1990ccf953260c3e4f28e58667d8579cff4b0ab7782b2b301a39642"

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
