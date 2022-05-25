cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.0,20220525.1"

  if Hardware::CPU.intel?
    sha256 "c8f088cf4e7b41f713b1c3b21cded369438c0b58db9aa4244c47296f5cf5c649"
  else
    sha256 "3b00b4cd2cced1cf13268b86f4c8c0e6348e9a8a05af854ce5eebf55c38f6e54"
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
