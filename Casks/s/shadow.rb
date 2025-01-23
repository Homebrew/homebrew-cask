cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10166"
  sha256 arm:   "eed4df61fd5d9ab3e116f4dfd0f99720ec72571372db9f0994c5f7c1b14b7224",
         intel: "e07b777ca815c7ebb4ccb1a29d0c753d10879adf20092d24ba2f1700ffc78e05"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
