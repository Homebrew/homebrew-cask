cask "k8studio" do
  arch arm: "-arm64"

  version "3.1.8"
  sha256 arm:   "5da70c6a00ea2e3dd37dd2840a7a8e529bdbcee83c9f8d3255c9af7a5b422688",
         intel: "cac63761b53cd3fa95741eb36f4ac9e669e71c75f1e0eed12f18f9e9d655dab5"

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
