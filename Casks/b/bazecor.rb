cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "becfe32cfa8d98159ba4e795e5d87cfed24e9c278e249290a27ebefb1274765a",
         intel: "b135ae97a14932369c0d370144eb7db7151400abb1f087597fe870d2bc7d89b9"

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
