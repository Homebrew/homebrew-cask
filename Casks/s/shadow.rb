cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10115"
  sha256 arm:   "f9f9491e3df0f158abe636c5496fbb76cc1aeaad293e77a8817d1b8f2268cb77",
         intel: "4f584df803d5d8c8bfdc6364599e27a66366a380552a95d89c65f4ad1f6e2dfa"

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
