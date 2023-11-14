cask "lens" do
  arch arm: "-arm64"

  version "2023.11.131420"
  sha256 arm:   "c2098090ab5db0fb3585f92ee538408fab16534932dec6fe88148daad1f19dfd",
         intel: "60b4b8ab04a8f1b039f0195e2c7383965319c5382002b0875f5acc9d6f51f177"

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
