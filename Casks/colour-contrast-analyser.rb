cask "colour-contrast-analyser" do
  version "3.2.1"
  sha256 "bc2c4be0c43ad8f41494c4b5ba6621e0e711f7ed0fa40f37844369424e812bc0"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-x64-#{version}.dmg",
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
