cask "lens" do
  version "5.2.2-latest.20210918.1"

  if Hardware::CPU.intel?
    sha256 "c857d61d2963461dd759d132bfded30cc8bee732410e3d0746b4b3693367fe4a"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "c9f09ef6d527afc0d158e31172b678be2b693b6f843b9c9c2f0bd1c559bd9126"
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
