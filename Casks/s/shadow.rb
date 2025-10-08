cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10318"
  sha256 arm:   "38086bbcbe6e4f2222ce27307668ce69b1b3551a59f6e0b80d78660fefae6c64",
         intel: "902ad08c81a8762269c8eb85adf607a39d9af5cf3f8258baf3e0d3ec984eed00"

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
