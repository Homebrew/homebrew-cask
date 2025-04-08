cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10208"
  sha256 arm:   "1c1013e8759b72ee515d6a3175e86f71fca258b1d231a84ba28c1d4e4010e7ce",
         intel: "bef455cafb72129319d3221aea8d081386957ea9ff7366b7f8a6bb2514484740"

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
