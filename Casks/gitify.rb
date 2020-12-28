cask "gitify" do
  version "4.0.0"
  sha256 "2c051280f1ac2cb410736f013f0dc99d1a808e7574c0bc9b46b399dfa6ee466b"

  url "https://github.com/manosim/gitify/releases/download/v#{version}/Gitify-#{version}-mac.zip"
  appcast "https://github.com/manosim/gitify/releases.atom"
  name "Gitify"
  desc "App that shows GitHub notifications on the desktop"
  homepage "https://github.com/manosim/gitify"

  app "Gitify.app"

  uninstall quit: [
    "com.electron.gitify",
    "com.electron.gitify.helper",
  ]

  zap trash: [
    "~/Library/Application Support/gitify",
    "~/Library/Preferences/com.electron.gitify.helper.plist",
    "~/Library/Preferences/com.electron.gitify.plist",
    "~/Library/Saved Application State/com.electron.gitify.savedState",
  ]
end
