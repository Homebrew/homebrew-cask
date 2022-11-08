cask "lens" do
  arch arm: "-arm64"

  version "2022.11.81921"
  sha256 arm:   "a4ea99cb3dc7eb29ba14e13fa193b7be2cbabeaede7ab0390d1b8b7d3e6ebd3d",
         intel: "856c41d8fcecb56d6806bcfd8a561e3a567d9a3064f0142a00f630121baccd3e"

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
