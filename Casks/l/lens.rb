cask "lens" do
  arch arm: "-arm64"

  version "2025.1.100124"
  sha256 arm:   "a5758967f29fb8c3d8cbc9ac3a83018e2c57d104a913a4a0e2ac80fb436bbfb7",
         intel: "73340bde45a7789b7367103ec9cfe812fd99b975fd64d4be05390f9185403c21"

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
  depends_on macos: ">= :catalina"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
