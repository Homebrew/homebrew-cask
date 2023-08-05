cask "bazecor" do
  version "1.3.2"
  sha256 "c462bfb1c637d79940108ccababe3499d3114ca566e32802133419a50176e0b0"

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
