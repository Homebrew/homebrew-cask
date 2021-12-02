cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.2,20211201.1"

  if Hardware::CPU.intel?
    sha256 "f5f23682ee50c72cbb0570e8119e8c0b8686908dd0a8403b39a68ee69c82e39e"
  else
    sha256 "4aea465676090c53d3204379b6ce2800b864b0d90d05937139be3ae0b3468eb7"
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
