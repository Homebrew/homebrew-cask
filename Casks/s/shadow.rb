cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10132"
  sha256 arm:   "79e123cd1d32897a7c32fe4674cf8a8345d659933074c5c07721b430a5b9842b",
         intel: "2d8c4d6b99f7907c70eb0c91f537bb7750426c80630f0b99a56172851c16a95b"

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
