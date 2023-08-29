cask "lens" do
  arch arm: "-arm64"

  version "2023.8.291046"
  sha256 arm:   "45dafa14811a27892ee363e99b09809fd017f18af834ce79fc507ff8d8f2c3dd",
         intel: "59a728fb20a784dd9ca91dbb56c9bec541ec1223a9f61c9e2c2ea828581d2f5f"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["version"].sub("-latest", "")
    end
  end

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
