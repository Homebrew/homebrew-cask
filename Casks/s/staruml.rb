cask "staruml" do
  arch arm: "-arm64"

  version "6.3.3"
  sha256 arm:   "7be3df4306e648fed27546b48bd384e105d4e456769a20710d6db0f4346515bd",
         intel: "5904db343ad45fb8a2828cfbb9585f4bdc439834fe0a82938ae26d342b8a2596"

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
