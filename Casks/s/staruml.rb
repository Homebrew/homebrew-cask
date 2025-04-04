cask "staruml" do
  arch arm: "-arm64"

  version "6.3.2"
  sha256 arm:   "e0264fad5c88dddf4d3056cc3a2b710903d1a91f875f3a480917f76a8a3afa6a",
         intel: "88c880ce5076ade219fae6f47893c16865d9e35a5628629740c3093214b9ad92"

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
