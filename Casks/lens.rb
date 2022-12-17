cask "lens" do
  arch arm: "-arm64"

  version "2022.12.160848"
  sha256 arm:   "c2e90e421e97c37f2b0c0a8758e9a08c112beb7508f9c6cc8482c506776d7b7a",
         intel: "567ba2f29f4103a6071caa9e88c0035d8a467a045403adc385c87b41c1c1799b"

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
