cask "staruml" do
  arch arm: "-arm64"

  version "6.3.4"
  sha256 arm:   "91df4902c0923f6f41f24325584435f87297c42cf61ecca01c45eea0e31eac24",
         intel: "7d48dce6de47a3795b19e81531aa7638ae6e0308d99f979b2b838de6ef50601a"

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
