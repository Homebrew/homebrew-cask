cask "lens" do
  arch arm: "-arm64"

  version "2022.10.70653"
  sha256 arm:   "8724ab1e08221db860fa32c7e6eeb828232ffc281025b43f525eb54089ef3c34",
         intel: "166c53d5b0b2dfe251822decf08b4e0bd5f5302f607abd845791deca351f4ff3"

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
