cask "lens" do
  arch arm: "-arm64"

  version "2022.10.131529"
  sha256 arm:   "a167087f79079b050a37c27df55b7a7b6aebb59ef893cdb3e33fb12a3e1e4459",
         intel: "4335537eefe0d63daba9c4982ec363e34ae01f7fd38e392042cb1ae65ab190f3"

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
