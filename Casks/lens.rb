cask "lens" do
  version "5.2.3-latest.20210921.1"

  if Hardware::CPU.intel?
    sha256 "041bdd4028b39c1e6b73bdcea0cecfd39663be2e30cd495df1b87158762a0d6a"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "b191f165b09d19fc73716bfc9fd179b8ff1f518372ab619c5198577b73bd80a8"
    url "https://api.k8slens.dev/binaries/Lens-#{version}-arm64.dmg"
  end

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
