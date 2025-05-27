cask "k8studio" do
  arch arm: "-arm64"

  version "3.0.5-beta"
  sha256 arm:   "2b9eed3f5f13284e32130eff1774ff602c982b564a49d1e458b5dcdb3464a2b9",
         intel: "b7f6d9e27a5a6337b442f54d449cb034b0304d472f000b31b3fdaef4a7e466b7"

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
