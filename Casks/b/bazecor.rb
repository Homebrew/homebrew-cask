cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256 arm:   "12d5da03a19ad3107d3fe425cd58e135327ad3115cd924a38471a062318d7e61",
         intel: "0be8e3c052617a58db306c40b57df99ce8d84ee46bdf0b46362cef79a247b9b6"

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
