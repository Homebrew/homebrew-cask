cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10109"
  sha256 arm:   "4667845621dcf3b1d9f46f17bdb3eba9f708275dfaf69095e4a5c6505b7fb04c",
         intel: "158320365eebacdb6cb9a1502e3ec76526dafd2ecda8ef4da11cda84e04111ba"

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
