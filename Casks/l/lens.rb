cask "lens" do
  arch arm: "-arm64"

  version "2024.10.171859"
  sha256 arm:   "8bf7707f8e72e967a37f15f72e8528907d5a6a34b7f3fddca4543468591189c7",
         intel: "e627dc2fd4551273055f218091f57483575c37d76930a307314b62f32632c372"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    strategy :json do |json|
      json["version"]&.sub("-latest", "")
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
