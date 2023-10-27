cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "be172afb426247c982c818223351515b55937e3730b8ac94f6811ed5404796a9",
         intel: "1f0e35e9739fc9f6dd4b5282834077dbafd6ff2581445c2e70247c30a6961b3e"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v.#{version}/Bazecor-#{version}-#{arch}.dmg",
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
