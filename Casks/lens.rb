cask "lens" do
  arch arm: "-arm64"

  version "2023.4.141316"
  sha256 arm:   "08fca18adf8b3b6cfc440e4beb08be237f1eef827ad2d0cb9c48f5d102e1e3e7",
         intel: "b45fc769c48c9c2bc7cb14e54567ec6ffc72b0f51b5a7286b50297eb4a9a5de9"

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
