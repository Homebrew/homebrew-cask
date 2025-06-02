cask "k8studio" do
  arch arm: "-arm64"

  version "3.0.7-beta"
  sha256 arm:   "b941aa81ca85504251b863207975fcc409878502889e18ee40ffa316703401f6",
         intel: "3dca6f8a66b57a290833079f3cc553283e53e48d2623a24eed0a6efcee1443c8"

  url "https://github.com/k8Studio/k8Studio/releases/download/v#{version}/K8Studio-#{version}#{arch}.dmg",
      verified: "github.com/k8Studio/k8Studio/"
  name "K8studio"
  desc "Kubernetes GUI"
  homepage "https://k8studio.io/"

  livecheck do
    url :homepage
    regex(/href=.*?k8studio[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "K8Studio.app"

  zap trash: [
    "~/Library/Application Support/K8Studio",
    "~/Library/Caches/ide.k8studio.io",
    "~/Library/Caches/ide.k8studio.io.ShipIt",
    "~/Library/Caches/k8studio-updater",
    "~/Library/Logs/K8Studio",
    "~/Library/Preferences/ide.k8studio.io.plist",
    "~/Library/Saved Application State/ide.k8studio.io.savedState",
  ]
end
