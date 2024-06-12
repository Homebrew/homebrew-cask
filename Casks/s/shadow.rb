cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10042"
  sha256 arm:   "105103bd47229082ccc14774b19600b768192feab60f37d823b0c5c437653854",
         intel: "82d97f0ce7d9ac165246da8739a015cecf2d6901e7fcd724f372beaccaab39e7"

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
