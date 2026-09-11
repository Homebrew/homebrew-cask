cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10457"
  sha256 arm:   "c56ad9e2d39e6aa2f2612de9783b3b007956f521abd802c97de433736500f39e",
         intel: "fabf6d49baf7fd34b95c76eb870e5edc2fd12e5e9b40ab2a4294e0452aaa9536"

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
