cask "bazecor" do
  version "1.3.1"
  sha256 "f3c71b3085fc8796b38f28d70928a92060d4e812f242c10ee5a8f820cd4fba56"

  url "https://github.com/Dygmalab/Bazecor/releases/download/bazecor-#{version}/Bazecor-#{version}-x64.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
