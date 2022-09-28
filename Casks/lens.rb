cask "lens" do
  arch arm: "-arm64"

  version "2022.9.280635"
  sha256 arm:   "1d9316b5c234f98814b82da8951f020b0659a955e84c2ef363430ead68ec414f",
         intel: "0c4008c3e7e4fa7e929f742becdfe74e9f4e603382f1bbcef9718d66f40f1ba3"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
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
