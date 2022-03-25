cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.3,20220317.1"

  if Hardware::CPU.intel?
    sha256 "20bb2c2fcd036997492b874742fb485abf3ff13caa506de30ad2dcfde7e657c9"
  else
    sha256 "1811c1363542d6ac994bba9e71ea038796bad9f761bb73c0c6f77f5cfabaab86"
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
