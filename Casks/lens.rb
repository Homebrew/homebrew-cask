cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.1,20220304.1"

  if Hardware::CPU.intel?
    sha256 "fbc9bd3d99689d7761e65b636514965eaf04f8c8b951b7ae6617662942e2d645"
  else
    sha256 "e7b0cf0e29cbc9814c2d1e0d0c6d4c40d6f813c20451964ac728920e015fd7bd"
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
