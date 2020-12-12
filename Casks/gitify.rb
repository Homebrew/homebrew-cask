cask "gitify" do
  version "3.1.2"
  sha256 "14ef7e4d24ffe82c62994e971391093495b2a2dcbcc3e18fd68869833e10ae16"

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
