cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.6,20220427.1"

  if Hardware::CPU.intel?
    sha256 "c909a47256deb5250105d024c78beb237a30847ae2c284af87f11411b0be85a4"
  else
    sha256 "c91a7a6d4e1fe03154928629b2b8bd0bf6a8cc80f9966ece3fcad331f457d28d"
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
