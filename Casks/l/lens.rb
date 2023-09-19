cask "lens" do
  arch arm: "-arm64"

  version "2023.9.191233"
  sha256 arm:   "c9629d563fc5c5d99043c0ce64699063b9e68160e4cf2399a696f762ea8ec271",
         intel: "4dbc4065abfd1105d4b90b704c293a3fb2602f7d34efa93a3957cab279b27aec"

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
