cask "lens" do
  arch arm: "-arm64"

  version "2023.5.100746"
  sha256 arm:   "680091cd6ef3c9334fb7ac1fada4b496405f49feb39a2aa6bdfe1996df2e8ea9",
         intel: "d44ec10679f823f7a898565cf89903eb9e23ac2d56cde305503b7fbb4d86b7fc"

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
