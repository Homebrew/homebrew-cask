cask "gitify" do
  version "7.1.0"
  sha256 "098736edf8f97d3999bece91271b18d138ddbab18df47bbb2677eebdc04c4f7d"

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
    "~/Library/Preferences/com.electron.gitify*.plist",
    "~/Library/Saved Application State/com.electron.gitify.savedState",
  ]
end
