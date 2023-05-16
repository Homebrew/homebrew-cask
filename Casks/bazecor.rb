cask "bazecor" do
  version "1.1.0"
  sha256 "19ab71768938d8e97c59b29d1090491aaf93392586302640db5314a5b2107526"

  url "https://github.com/Dygmalab/Bazecor/releases/download/bazecor-#{version}/Bazecor-#{version}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
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
