cask "gitify" do
  version "5.9.0"
  sha256 "49562c225d02d955f6f850ca6ed9924f47a3c4247079c594ca2b7e7c96cca7b8"

  url "https://github.com/gitify-app/gitify/releases/download/v#{version}/Gitify-#{version}-universal-mac.zip"
  name "Gitify"
  desc "GitHub Notifications on your menu bar"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gitify.app"

  preflight do
    retries ||= 3
    ohai "Attempting to close Gitify.app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Gitify.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close Gitify.app"
  end

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
