cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10241"
  sha256 arm:   "31d1ecb94c275c321187e59b9a7e8a1192b9ef5dfb32db1344cd7b4647750407",
         intel: "2d1dcbe50390cd940c55f742fdc046f0bca7735de62769b3e90cde1f9d0203a6"

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
