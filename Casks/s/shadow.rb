cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10173"
  sha256 arm:   "f22020a02e483eadfe1fe0f2ae0cc3da67a1ae5d3d584026f76dcf1b065f3137",
         intel: "3f21ac2b15e3f6b649c7659044b6473b03aeff9bbb099b99be23b6d45be61b84"

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
