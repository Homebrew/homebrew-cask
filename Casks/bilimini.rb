cask "bilimini" do
  version "1.5.5"
  sha256 "ef09cb6365bcd16b34841e529d1c58325e14ed54d95f9096d1ae224125a0bc0d"

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  name "bilimini"
  desc "Small window bilibili client"
  homepage "https://github.com/chitosai/bilimini"

  auto_updates true

  app "bilimini.app"

  zap trash: [
    "~/Library/Application Support/bilimini",
    "~/Library/Preferences/com.electron.bilimini.plist",
    "~/Library/Saved Application State/com.electron.bilimini.savedState",
  ]
end
