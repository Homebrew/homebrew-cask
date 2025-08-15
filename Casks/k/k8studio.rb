cask "k8studio" do
  arch arm: "-arm64"

  version "3.1.2"
  sha256 arm:   "d07fc2fd2495a5c9b8359e36d24a9676933e6f16fac365619e45108473e1cb66",
         intel: "2d4f4d28044f38ecabebce93081ff83cbf5c861c7a7e26ec2e0b58e08d55d5cc"

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
