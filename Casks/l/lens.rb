cask "lens" do
  arch arm: "-arm64"

  version "2024.11.261604"
  sha256 arm:   "69a90908b9d00409d476bae789371a852faadff90fd3d9a568f4d5f055b969f2",
         intel: "31041119309ef8b1075c98bace39e910d6ed95634ff97547f6b59744c93edbac"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    strategy :json do |json|
      json["version"]&.sub("-latest", "")
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
