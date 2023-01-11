cask "lens" do
  arch arm: "-arm64"

  version "2023.1.110749"
  sha256 arm:   "210782fbe953d7ed71797d2d2357e89677a1fa4c762a054ae79c9e2230e1cf35",
         intel: "b8631d29ffdea2b0b0f3e398a7e31aa2801d49bb03c4c830d290f0b90704dc99"

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
