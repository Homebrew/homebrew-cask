cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10388"
  sha256 arm:   "1ffd34c552eea645790b87b895d7b167e504643577f80ad26946d5792e6f1e31",
         intel: "89ca4f007e8f879df8fa72e9b4b93be2c2d4ec9f1246ea4836f0dad6bcac6375"

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
