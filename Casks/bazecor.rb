cask "bazecor" do
  version "1.0.0"
  sha256 "449ad344e90b2d2f13b1db2a1c417f8739bf5a81d291ea125b50ac17b1501879"

  url "https://github.com/Dygmalab/Bazecor/releases/download/bazecor-#{version}/Bazecor-#{version}.dmg",
      verified: "github.com/Dygmalab/Bazecor"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
