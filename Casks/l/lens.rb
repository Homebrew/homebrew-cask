cask "lens" do
  arch arm: "-arm64"

  version "2025.9.151055"
  sha256 arm:   "72ef535139374c981da2d24351589e9480c8193a1c0883d5422c091c429e8880",
         intel: "391c14769c8b0ef3c2702f2fdc7785b777f623ea8d4888bd520111aef807d801"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
