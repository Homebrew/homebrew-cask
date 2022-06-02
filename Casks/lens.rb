cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.3,20220602.2"

  if Hardware::CPU.intel?
    sha256 "3cb00911a9640a7403d0988b4d206470f904169e9b7c326d29c85c1c7de04520"
  else
    sha256 "ab3ca84f7ef04b05f8b32dfd6a1f65298ed4ddab52c1f4f50feeebf88cce673c"
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
