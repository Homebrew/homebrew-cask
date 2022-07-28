cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.0,20220728.2"

  if Hardware::CPU.intel?
    sha256 "4f305fa4e6dc2666b142d001beaf0d5a2e0922d9ae29b133369d241519a99110"
  else
    sha256 "af7307dce532f45c7df85419919f34c4341f6761c58a42445b84c37b454948a6"
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
