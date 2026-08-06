cask "k8studio" do
  arch arm: "-arm64"

  version "4.0.1"
  sha256 arm:   "966a782cdc151748ddb70ca30e57e442a37513bfa64914de28dd478797e47f3c",
         intel: "cea0fb46bead2d649325e402e3c50339c5a199c3a5017b30bf8bb80ee990a3cc"

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
