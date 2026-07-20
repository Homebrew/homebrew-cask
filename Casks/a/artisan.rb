cask "artisan" do
  arch arm: "arm", intel: "intel"

  version "4.2.0"
  sha256 arm:   "ef4abc2a8db4efee94d89703d150b033555f3c19164ba34665ba39854e1492a2",
         intel: "d152a64f41145807af248336971378be974c67db4b51194acc5606a15e4d68c6"

  on_arm do
    depends_on macos: :sonoma
  end
  on_intel do
    depends_on macos: :ventura
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

  depends_on :macos

  app "Artisan.app"

  zap trash: [
    "~/Library/Application Support/artisan-scope",
    "~/Library/Preferences/org.artisan-scope.Artisan.plist",
    "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
  ]
end
