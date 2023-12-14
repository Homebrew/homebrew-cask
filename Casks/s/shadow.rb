cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10198"
  sha256 arm:   "d617529e78fa1b93ef3136d7c5590ee3a713a9c4be01ae299b5dd7c6ee23b5c7",
         intel: "b4a331272c7b225dde64609cbd8c8615a9819b59299dc3900458f234c3b7562a"

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
