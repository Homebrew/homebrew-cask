cask "lens" do
  arch arm: "-arm64"

  version "2023.4.60821"
  sha256 arm:   "56a739caec0d58b8f5bf4c4ce62d8d4ad5352269cc59284251788d3d1b19377b",
         intel: "381b43454da6bea3dc768ebf0ccbe40362bcd7dfc6cd981f553846d22b5d7356"

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
