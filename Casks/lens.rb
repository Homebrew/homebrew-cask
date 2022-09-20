cask "lens" do
  arch arm: "-arm64"

  version "2022.9.201328"
  sha256 arm:   "d4a60e0629655740ef9c623d64f2952573abb4f49f056668ec30ef4741085411",
         intel: "6156384744f7a23032e3425f67e2e1d4e5d4064c69a838efe50ad41ede04ab3e"

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
