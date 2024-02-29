cask "artisan" do
  version "2.10.2"
  sha256 "090d53defc345268b053a2b24f4567e6c69ce1f07468d413d141be1a29464dee"

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
