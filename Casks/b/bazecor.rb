cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "3f135314f764e0015dffc39ea8a196095220f8bce75ffe9104079ea06bec49d1",
         intel: "18aa87da0aa697ff1bcd766defc26eeb88e2bd6d77240b4bd30f0b99d79ba51a"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
