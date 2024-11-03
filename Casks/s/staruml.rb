cask "staruml" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "7c1b1bbb9bd6db5d8cdd5ec4bb74dd4bf8ce5d2da662f7dfa8d88e74e8566be2",
         intel: "390e84e784bd2d9df17f39b3c848777a75785eec2c09b0ca54b469af2abd79a2"

  url "https://files.staruml.io/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeller"
  homepage "https://staruml.io/"

  livecheck do
    url "https://update.staruml.io/releases-v#{version.major}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "StarUML.app"

  zap trash: [
    "~/Library/Application Support/Caches/staruml-updater",
    "~/Library/Application Support/StarUML",
    "~/Library/Caches/io.staruml.staruml",
    "~/Library/Caches/io.staruml.staruml.ShipIt",
    "~/Library/HTTPStorages/io.staruml.staruml",
    "~/Library/Preferences/ByHost/io.staruml.staruml.ShipIt.6B4DD3EE-2BFA-5A1C-A64F-50799C342D41.plist",
    "~/Library/Preferences/io.staruml.staruml.plist",
    "~/Library/Saved Application State/io.staruml.staruml.savedState",
  ]
end
