cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10265"
  sha256 arm:   "cb66bcc07e48972c5ea4d5fa1c1bc4e37698d8329cb63839034283cdd6c492ab",
         intel: "e25d262582c25ff58c53110d74709ffb261afb3ecc680d50f145d1206cef5077"

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
