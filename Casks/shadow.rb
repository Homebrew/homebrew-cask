cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10046"
  sha256 arm:   "2365ecb0bb066ffb9bca0a31dfcb6d93f69c76eb62d90134f58d9df72b021f79",
         intel: "a039cee238aca5c58e2a8339c193ed4bd616de78994f72efc2ccd3069181fcda"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/Shadow-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
