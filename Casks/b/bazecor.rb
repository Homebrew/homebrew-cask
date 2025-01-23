cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "aaba1129eac6e345040e7e0f8c8a0284cd46f46164a59ee37c686b0e214506f7",
         intel: "01f56b00ceef8ae372e98112c7659fb19f69363d265870cfb4ce8d46dffe9392"

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
