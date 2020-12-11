cask "gitify" do
  version "3.1.1"
  sha256 "6af31c5a158414a20df549e9d2a471b133ee849bc8d155f5c62126e65988254a"

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
