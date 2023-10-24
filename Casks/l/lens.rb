cask "lens" do
  arch arm: "-arm64"

  version "2023.10.181418"
  sha256 arm:   "81e038527c800ed5fca82635f72152afd8b1ded561e420b3318804ee855743e7",
         intel: "ab7af80ceae7dca18ffff54c2908ffa1215361977cf94014fa83e7c2aa8448db"

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
