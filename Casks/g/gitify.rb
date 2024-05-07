cask "gitify" do
  version "5.5.0"
  sha256 "e9da9c4b3a8065eee58d3e69cca808ab0264b1bc8094c0455aa3c79973408be8"

  url "https://github.com/gitify-app/gitify/releases/download/v#{version}/Gitify-#{version}-universal-mac.zip"
  name "Gitify"
  desc "GitHub Notifications on your menu bar"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gitify.app"

  preflight do
    system_command "/usr/bin/pkill", args: ["-f", "Gitify.app"]
  end

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
