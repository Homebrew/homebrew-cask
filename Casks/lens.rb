cask "lens" do
  version "5.2.1-latest.20210916.2"

  if Hardware::CPU.intel?
    sha256 "68de76dc5a8db25ea955aeb79a7d6a13a900d8d254f34fc354ad920ded77aeb4"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "1a82868f6006858b38fb9a9267bccbe46897b0b93ea332c87f7c3e58e89ec0b7"
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
