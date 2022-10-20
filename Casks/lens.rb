cask "lens" do
  arch arm: "-arm64"

  version "2022.10.181357"
  sha256 arm:   "15d523ea75c0080b366a86a004b53d12c08aa009e19d6f66425b4707e5326a3a",
         intel: "e53914b202587c118c2766e4660a1bd5a013e813f2552679b51130de0cdc74d9"

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
