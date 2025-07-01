cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10250"
  sha256 arm:   "42c0e40fa5ca22f9ef74593034d9d86812d797e47963d306be18f1426887487c",
         intel: "77791923ff530fe68fd169975963bb62b27d5578d20158b5f20db05e52349c2e"

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
