cask "lens" do
  arch arm: "-arm64"

  version "2023.11.81519"
  sha256 arm:   "973746ea0133ece281f05e7b9ad229eae8f05d38efab29b756f3111172c660ce",
         intel: "db4649bce368867e7d113bac0c389dfd6376c55da0dbef184fd7958bf126b0d0"

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
