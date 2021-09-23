cask "lens" do
  version "5.2.4-latest.20210923.1"

  if Hardware::CPU.intel?
    sha256 "dff581d68e9fbb2d0bc14def659ae39505b1987d1036483a4b191a38fca06f37"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "856fb5164974e32b4fdb1e181603d11b2788dfd78041305863bf6a909cfb6166"
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
