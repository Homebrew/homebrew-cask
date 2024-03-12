cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10245"
  sha256 arm:   "b727986304926673faec99839318e079316979cec8d556c890f7ef875c99d277",
         intel: "ccb55bf79a5bdffcf51d8bda31100eab6067daf9ac0154feae6f1eeb997ceb5f"

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
