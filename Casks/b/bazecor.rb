cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "c5c04da2cf86cfbbd8972376fbef6d135779d65744a66dd6fc2c62198ea8ebbc",
         intel: "e179b0699b35046f65964dfba41d3a2d711ad307302b72095030331d1a2b37ea"

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
