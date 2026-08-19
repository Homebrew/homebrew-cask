cask "lens" do
  arch arm: "-arm64"

  version "2026.8.190756"
  sha256 arm:   "240620ec09b010a87d3c08974d46adcfdd03fa59b9f005c491220886843a4803",
         intel: "6245ffc0b6c2a01c6a6a38ff9de5351777d4fd691672fdd0170439b6eb4fde3d"

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
  depends_on macos: :monterey

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
