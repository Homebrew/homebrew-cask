cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10222"
  sha256 arm:   "0eafbdc3bd01e8b2f28fcdfc7fdb4e5c90376428013a92a07e53624c13ba5af7",
         intel: "78968ef1bfafae3f94e87d9a1ee72c4aaa3049c10570eaa9119ac8c633e9adfa"

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
