cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10431"
  sha256 arm:   "5d2beb779f244f58e69e5281ae9108cea2454849dd3d255af7a7c4f88b41a3a1",
         intel: "10a7192224bc7aefdb74413f53b404f844e70bd9ceab22a4fc11b24fd8684f27"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
