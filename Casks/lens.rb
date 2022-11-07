cask "lens" do
  arch arm: "-arm64"

  version "2022.11.71638"
  sha256 arm:   "8fb3104dd09299e4a07fe01c98efcadc8e8de55049c2fc9db56c0c346d7c3c40",
         intel: "54e9d8f75e78304b6c5ab1a7b0a3b4e23508a999facdbb898b0326b3a548ff9f"

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
