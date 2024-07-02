cask "k8studio" do
  arch arm: "-arm64"

  version "1.0.11-beta"
  sha256 arm:   "77f5e0b4fb2d74070ef9b3a8d55e11fed326e9a4941ae855272a412983bd843b",
         intel: "c78651df1b92abd9a55dfb4c89129d046b04d19cda634759af204c59b102373e"

  url "https://github.com/guiqui/k8Studio/releases/download/v#{version}/K8Studio-#{version}#{arch}.dmg",
      verified: "github.com/guiqui/k8Studio/"
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
