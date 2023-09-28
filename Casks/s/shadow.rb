cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10164"
  sha256 arm:   "8f076824b02d181401ed178307b46a26f03821d6a6f310acb4af1b62d723b2c3",
         intel: "f5e7afdbd838cd66128616cfc4a863e831472436b5de1d02133222c1ee9d764e"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
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
