cask "k8studio" do
  arch arm: "-arm64"

  version "3.0.4-beta"
  sha256 arm:   "3a321fa047e2de1744e82c76ffbb9c55e2e457b0d4c2cb10b17ca305ac936fad",
         intel: "b926ab67aa6a5ce3b45f8303b626c847e87f47ee5de74785de33750e0c9c8471"

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
