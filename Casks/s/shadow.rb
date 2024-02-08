cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10221"
  sha256 arm:   "5b5af9f6141f669c7c78f7f506f66884a5fc39faf0531573715bbf8d21b57031",
         intel: "d489a2b26f90ff9064d896e5fa9c2f345b2ce41ef7098c0e37462cb04c054f1a"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
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
