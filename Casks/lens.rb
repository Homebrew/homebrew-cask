cask "lens" do
  version "5.2.5-latest.20211001.2"

  if Hardware::CPU.intel?
    sha256 "80ffce7612230ef7713e4609d73732d1754d543382017822c9d3aadc538df54d"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "3fd79b283979eae87e9216700c788576db4c728b7308f9adab67a0e32d7fc6a9"
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
