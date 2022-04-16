cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.5,20220405.1"

  if Hardware::CPU.intel?
    sha256 "e3d6b6f705a5552d8fb9cee2215e9a8822b8fcb0001ed314b7921feb00568b90"
  else
    sha256 "c0a66a0eb32395a24f6f4c895cbee47886032594fdb51b47136a673943635401"
  end

  url "https://api.k8slens.dev/binaries/Lens-#{version.csv.first}-latest.#{version.csv.second}#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest.", ",")
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
