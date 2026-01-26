cask "tropy" do
  arch arm: "-arm64"

  version "1.17.3"
  sha256 arm:   "1073ee59e09635aa879eb59f981cf9de949b8c3207124869cde816bd0cfe532c",
         intel: "21895d3d96f1037078852151b8c94a9b4b69a64ecdd966b54313d28f9b0e8286"

  url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}#{arch}.dmg",
      verified: "github.com/tropy/tropy/"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tropy.app"

  zap trash: [
    "~/Library/Application Support/Tropy",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Caches/Tropy",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
