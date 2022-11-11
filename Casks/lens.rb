cask "lens" do
  arch arm: "-arm64"

  version "2022.11.101953"
  sha256 arm:   "653854c3764c38baf6e12a470137e06d9583c3ad9cfa85e6b63e8528f7298b55",
         intel: "f7007cc313f0c394d4943520c2d4848bfaa2a3ce4ee37a76196d9d95000fe97d"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
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
