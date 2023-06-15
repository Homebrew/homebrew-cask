cask "colour-contrast-analyser" do
  version "3.3.0"
  sha256 "219b897fbbd642e2e35c604c78056243b1f5ae2cab78b87126ec5b986ff536b7"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser"
  desc "Colour contrast checker"
  homepage "https://www.tpgi.com/color-contrast-checker/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Colour Contrast Analyser.app"

  zap trash: [
    "~/Library/Preferences/com.electron.cca.plist",
    "~/Library/Saved Application State/com.electron.cca.savedState",
  ]
end
