cask "lens" do
  version "4.2.4"
  sha256 "68dae557f1e83224d6aeb3aed7daae30bfd6153c1360c55248f2c632e5c34555"

  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg",
      verified: "github.com/lensapp/lens/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
