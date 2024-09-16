cask "atlasify" do
  version "0.1.0"
  sha256 "fdee7eaa752428590ec4da4e3779f6ea7e2e9129e9bbf0e595bd1e311ddabc91"

  url "https://github.com/setchy/atlasify/releases/download/v#{version}/Atlasify-#{version}-universal-mac.zip"
  name "Atlasify"
  desc "Atlassian Notifications on your menu bar"
  homepage "https://github.com/setchy/atlasify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Atlasify.app"

  preflight do
    retries ||= 3
    ohai "Attempting to close Atlasify.app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Atlasify.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close Atlasify.app"
  end

  uninstall quit: [
    "com.electron.atlasify",
    "com.electron.atlasify.helper",
  ]

  zap trash: [
    "~/Library/Application Support/atlasify",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.atlasify.sfl*",
    "~/Library/Caches/atlasify-updater",
    "~/Library/Caches/com.electron.atlasify*",
    "~/Library/HTTPStorages/com.electron.atlasify",
    "~/Library/Preferences/com.electron.atlasify*.plist",
    "~/Library/Saved Application State/com.electron.atlasify.savedState",
  ]
end
