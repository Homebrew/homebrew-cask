cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "202810ecbaa55c5083f7fee08661aac73609b1c5cec6098d894128f17b808263",
         intel: "be51d0c3bc3175b31bd0590473b56f6d40080a9d9d07afb3a4ac78f714e6c1a3"

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
