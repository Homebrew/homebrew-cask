cask "lens" do
  version "5.2.2-latest.20210917.1"

  if Hardware::CPU.intel?
    sha256 "ef2b849b95ef68a0245ded4f39eb09ec4735e7565da9a38d9e1deea05560379d"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "e8d159222da3c6c70cd163b32a09152255c56e64ba11faa417a1c5dc8d7f850e"
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
