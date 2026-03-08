cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10375"
  sha256 arm:   "b1b0652f04e8d5a708628edc3d9b68013b5b2814938a3528ae7e13e5afb1db43",
         intel: "344cd2cb0626591815527a34af4f287480c0c4ba0a4e7526de2ee1b84e5f3dc7"

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
