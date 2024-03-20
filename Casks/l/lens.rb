cask "lens" do
  arch arm: "-arm64"

  version "2024.3.191333"
  sha256 arm:   "86177c327c0a5a9bc6ed479b91e128ced4b8e522559e9bef27d672fb2e6cc229",
         intel: "c9ff9605c39d38cdd7b1f897253855c2cdabf38bc6da3c1f355d5cfacaba038b"

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
