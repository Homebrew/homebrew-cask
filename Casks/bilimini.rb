cask "bilimini" do
  version "1.5.6"
  sha256 "87ef9f9c4fc48aa4fcefa9057a7b3bfc321330a61b41cca115681b97c211527f"

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
