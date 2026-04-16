cask "lens" do
  arch arm: "-arm64"

  version "2026.4.151333"
  sha256 arm:   "a5037c0468fbd7b3d4b0a030f0e89bcfd7dcf69ec4af50edd9b290e529d90363",
         intel: "48ebf428c1c7f6de2c08c6a29480d310d4cbef298104db6fbfc10df1edf418ed"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg",
      verified: "api.k8slens.dev/binaries/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://lenshq.io/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
