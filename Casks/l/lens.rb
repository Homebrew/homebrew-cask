cask "lens" do
  arch arm: "-arm64"

  version "2026.1.161237"
  sha256 arm:   "c7499e09491e1d4c352e18ab9cd98469736a9bd22631137af43002622c9f0037",
         intel: "663eb34676fadee01277c70a694cb9764295e72f0b6576c4c00249b0651f6edb"

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
