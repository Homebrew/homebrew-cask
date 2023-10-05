cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "da6c64527bf14f8d4ef96bd6de1a31ea9a9718105e380116ffb6cc610b980427",
         intel: "f4e8327fc791e25d1aaadcab2ffc283f47121c21c43d3c9baf5bfbdd50f974b1"

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
