cask "lens" do
  arch arm: "-arm64"

  version "2023.3.90958"
  sha256 arm:   "3f0948648e046bf3ccf922329533d547511ec3b7fb3d6e4f602e94165050c6e2",
         intel: "a617576b0ed375b65a167eaf506e4719cdc9133b7f5c13bcb7a59a38afca2464"

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
