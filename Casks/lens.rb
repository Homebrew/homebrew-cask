cask "lens" do
  arch arm: "-arm64"

  version "2023.3.171731"
  sha256 arm:   "41662f7ffbe8148d29614fb07b8a96e2cf39ad5f8ec17338017940911424ae8b",
         intel: "b7bb97656e2dfbebaf328bba734a4af5d368601a06898016afaab0b28f6d2f35"

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
