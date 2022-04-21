cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.6,20220421.1"

  if Hardware::CPU.intel?
    sha256 "5f3e9e33e7239ea23d7d230803489b6e470b65ae119b21ff20e360eeb68e7340"
  else
    sha256 "749312ddacadc24595a03ee521b1492443c60295e6b9546aed14ce5f2982bf03"
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
