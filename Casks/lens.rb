cask "lens" do
  version "5.0.2-latest.20210705.2"
  sha256 "5b7134a54582748927b9c2cf911d5f5585195c01f0ddec57ce38057928a569cd"

  url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder
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
