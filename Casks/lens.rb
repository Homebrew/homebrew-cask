cask "lens" do
  version "5.2.6-latest.20211104.1"

  if Hardware::CPU.intel?
    sha256 "0712c647f7d6369dacc980f3fcc9cff008f880bd53aa4257ed9ab707cd583d1d"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "6c9ed462b877127c87ada6f912dd4c357502caae171f78468e64b6c40b3c93ed"
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
