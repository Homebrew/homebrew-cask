cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.3.9"
  sha256 arm:   "c9e6097377d09471102fe200b072b9812874daa120848dc3e815ef4efa7b1a13",
         intel: "bb3120274474cebd434630fe686bb79b8c5205d5dc62359e865f27ff0996bb14"

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
