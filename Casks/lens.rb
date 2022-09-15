cask "lens" do
  arch arm: "-arm64"

  version "6.0.2,20220908.1"
  sha256 arm:   "b71e07a2f94d723bae0fc8dc9854f661db8f755838d51ca075eafb43adc2c49e",
         intel: "15f51ef1f9b99abec8e0ee79075edb5d49ab23602096dcbbf8699c0f22c896bb"

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
