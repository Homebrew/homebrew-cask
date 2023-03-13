cask "lens" do
  arch arm: "-arm64"

  version "2023.3.100736"
  sha256 arm:   "16189290ed2f8136d905691937801b47791c7c1ac51bf0686fce7ee1d6b3c238",
         intel: "e26b7a579c9fa67a71ffd0f74c4fe8f223b6a223bd0d095e1b1e8b717c8cce28"

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
