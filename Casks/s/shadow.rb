cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10355"
  sha256 arm:   "0c8c7642f87ef1cb25567c4f8de1e4191faa56a2d2288f9c5e58c2cff48197d5",
         intel: "87aba549c8d402494aa54a90ebfc9571d5657976ef66e472c7c1b8d4a6696713"

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
