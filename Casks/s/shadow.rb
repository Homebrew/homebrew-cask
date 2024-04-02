cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10260"
  sha256 arm:   "84f11cf0da2c006230a72120c75dc5e1b37c79cd4b7137aed8d84ab6e7e8e6c1",
         intel: "7dd527829dddc7b38535f02854ed41ace9700bb8cafd942f385ffba11ba26e65"

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
