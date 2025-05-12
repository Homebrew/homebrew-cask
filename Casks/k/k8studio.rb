cask "k8studio" do
  arch arm: "-arm64"

  version "3.0.2-beta"
  sha256 arm:   "1295963d5b5fab22346d20cd5920c4c1be0f772f4ba8b16ec09bc8cc31ff4e8e",
         intel: "9ee02bcb9711df5782e73cedd2f65c652fae0fe80770290ea6e6a9fcd50598f7"

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
