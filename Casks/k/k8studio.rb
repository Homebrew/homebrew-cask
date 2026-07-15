cask "k8studio" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "a022514aefc679f34389ae9125aab10e36d328e6b3181cbd451b1fd12a4ca242",
         intel: "7386dae6e31e6544a97e4c69ca75a7f3a7e50f30a19ad4951f9f2e6cdf2dc691"

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
