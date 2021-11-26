cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.0,20211125.2"

  if Hardware::CPU.intel?
    sha256 "4e74c282fd6645363f79c148bef0d97e768c232aaec3088c70f32b21dc59d5d1"
  else
    sha256 "e4d2eec8dc3b9fcdb0d67b90a8f1a9e627c2fc3d4c3ce64e5dfef4c457450c6b"
  end

  url "https://api.k8slens.dev/binaries/Lens-#{version.before_comma}-latest.#{version.after_comma}#{arch}.dmg"
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
