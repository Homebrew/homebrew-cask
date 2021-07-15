cask "lens" do
  version "5.1.0-latest.20210715.1"
  sha256 "5823b79f0bb535daba122555f59f33dd366c865185761ad7b4b1a9bf36e18fd5"

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
