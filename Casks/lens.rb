cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.2,20220530.1"

  if Hardware::CPU.intel?
    sha256 "3df7829ee9038b801780a42b7222cc02ca782f0fad1cdc9ad79bcda12753b177"
  else
    sha256 "064a7ccdf545908a4b940df9ce230653d0ed2aea68b2064e98f6bfe8f0a54065"
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
