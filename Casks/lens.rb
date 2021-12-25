cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.3,20211223.1"

  if Hardware::CPU.intel?
    sha256 "30fb8b545e653d64856f38bfe234efd5878fbfa1ccdc16de182db3428b706baa"
  else
    sha256 "5b49a4785c071cc4117e724f9e6c85a509d1a3411a0de7409a8f25ec765520ea"
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
