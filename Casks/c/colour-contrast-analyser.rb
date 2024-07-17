cask "colour-contrast-analyser" do
  version "3.5.3"
  sha256 "03ad0d71bfe68cc012cfbeb8034fec4ccc60f180af62a33df1c9e22f3956b1ac"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser"
  desc "Colour contrast checker"
  homepage "https://www.tpgi.com/color-contrast-checker/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Colour Contrast Analyser.app"

  zap trash: [
    "~/Library/Preferences/com.electron.cca.plist",
    "~/Library/Saved Application State/com.electron.cca.savedState",
  ]
end
