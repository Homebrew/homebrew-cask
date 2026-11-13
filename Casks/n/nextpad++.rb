cask "nextpad++" do
  version "1.1.3"
  sha256 "b291b289f1dc8f625c449151332bd0d088f6f966fbe5144904b14dd8c056e701"

  url "https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases/download/v#{version}/Nextpad++v#{version}.dmg"
  name "Nextpad++"
  desc "Unofficial native port of Notepad++"
  homepage "https://nextpad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Nextpad++.app"

  uninstall quit: "org.nextpadplusplus.mac"

  zap trash: [
    "~/.nextpad++",
    "~/Library/Application Support/Nextpad++",
    "~/Library/Caches/org.nextpadplusplus.mac",
    "~/Library/HTTPStorages/org.nextpadplusplus.mac",
    "~/Library/Preferences/org.nextpadplusplus.mac.plist",
    "~/Library/Saved Application State/org.nextpadplusplus.mac.savedState",
    "~/Library/WebKit/org.nextpadplusplus.mac",
  ]
end
