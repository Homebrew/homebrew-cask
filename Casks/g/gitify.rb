cask "gitify" do
  version "7.2.0"
  sha256 "068435faeb84adaede0d749e798b967f7ac0ad0534043d489ad2d037cb658047"

  url "https://github.com/gitify-app/gitify/releases/download/v#{version}/Gitify-#{version}-universal-mac.zip"
  name "Gitify"
  desc "GitHub notifications on your menu bar"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Gitify.app"

  uninstall quit: [
    "com.electron.gitify",
    "com.electron.gitify.helper",
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.gitify.sfl*",
    "~/Library/Application Support/gitify",
    "~/Library/Caches/com.electron.gitify*",
    "~/Library/Caches/gitify-updater",
    "~/Library/HTTPStorages/com.electron.gitify",
    "~/Library/Logs/gitify",
    "~/Library/Preferences/com.electron.gitify*.plist",
    "~/Library/Saved Application State/com.electron.gitify.savedState",
  ]
end
