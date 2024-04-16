cask "gitify" do
  version "5.3.0"
  sha256 "2e234cacfbb103d2b3797ac539ee8fa362c234c05b72b231b7a6102037455725"

  url "https://github.com/gitify-app/gitify/releases/download/v#{version}/Gitify-#{version}-universal-mac.zip"
  name "Gitify"
  desc "App that shows GitHub notifications on the desktop"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

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
