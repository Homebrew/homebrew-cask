cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.8.3"
  sha256 arm:   "294e07c664fa2a9479f915cab3be8ffb0cf156ecacabcd5ea3bcfcbccb715411",
         intel: "9f7adf5bb58269df45a0d3507930ecb29365b5e61980c87c24d28bece5a983a6"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
