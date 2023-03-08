cask "lens" do
  arch arm: "-arm64"

  version "2023.3.71735"
  sha256 arm:   "cafea2ea300d38f75fd8a42db25c46c42563fc4d2162ae4efaa4035bf135726a",
         intel: "42e0de39402ca8ee22dd5de21b3a4b5ed730f544b9907d64cd6a0ee78215477e"

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
