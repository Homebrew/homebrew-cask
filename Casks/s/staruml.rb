cask "staruml" do
  arch arm: "-arm64"

  version "6.3.1"
  sha256 arm:   "6e91fdafb42877f670af06d57b07e2efe2fb3f07185be3e247ea1e3fba81ed66",
         intel: "613be3c55f6495e711e696284d1c1b44f8b012b9166e172ac5ef594128a8148d"

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
