cask "k8studio" do
  arch arm: "-arm64"

  version "3.1.10"
  sha256 arm:   "0c86ccfbea4e2c53ed0e93c1f7d97e73b79908dfe931c732740526eb2a27e12e",
         intel: "667ba95e7c887e13ea5e69e9bcf35b2f48a0a70359dd1c08f3615de7ea425410"

  url "https://releases.k8studio.io/K8Studio-#{version}#{arch}.dmg"
  name "K8studio"
  desc "Kubernetes GUI"
  homepage "https://k8studio.io/"

  livecheck do
    url :homepage
    regex(/href=.*?k8studio[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)\.dmg/i)
  end

  depends_on macos: :big_sur

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
