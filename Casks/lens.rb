cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.4,20220120.1"

  if Hardware::CPU.intel?
    sha256 "37e06200e25a9a3f7bec914186a5f550b3c5f1b4b6b1235936664f0263e79580"
  else
    sha256 "fb3302f9517196c8f78270b9439f5eb2f60e628c16b1494d7a691b80e1eb360d"
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
