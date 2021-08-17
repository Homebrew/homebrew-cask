cask "lens" do
  version "5.1.3-latest.20210722.1"
  sha256 "9956bb80a3ba1aa3d26452a8f1fdc5412be7a8f987a8d720128c8b906042c1db"

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
