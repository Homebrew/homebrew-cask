cask "lens" do
  arch arm: "-arm64"

  version "2022.11.241650"
  sha256 arm:   "86a7d5df24d58a46d558d0dd699aa6844655baaf2c94752631e6b8f34cc0a7b6",
         intel: "c2b6f65bb5808a92f34575f2f420849937a39427f69deed8de7617d7d3e96085"

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
