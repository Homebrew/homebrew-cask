cask "lens" do
  arch arm: "-arm64"

  version "2022.11.211937"
  sha256 arm:   "4fff6136ac98fadbbabd87af092e6998d9ab90f59dcd179c79703d741e612a0b",
         intel: "32140b91d5e1bbf4687c47c62d987eb5db2025b3c35758001fcc5467b8c85a6e"

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
