cask "k8studio" do
  arch arm: "-arm64"

  version "3.1.5"
  sha256 arm:   "b7de17764be599222d7170d818e6967e62167fe116b3d0ee8b5a055091574aaa",
         intel: "4a7e4f7f370db97e013b4073e44688e1fc5a01c37b855c86ef836cca1fc23a2e"

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
