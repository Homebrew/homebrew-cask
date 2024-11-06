cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.3"
  sha256 arm:   "4e4d05e6bdbeb95f6feb5440c508b67ec5236ab3833268601b72afa0efafc8b0",
         intel: "dd674690345bcee49bad171bea676435a6d769b9db0d95e88a447a879ca030bf"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
