cask "rsyncosx" do
  version "6.5.6"
  sha256 "2fcd1427ffdf13a71ac6895b17e0301adb0b006859c8bf7abb0cc30c0a3b1d26"

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.#{version}.dmg"
  appcast "https://github.com/rsyncOSX/RsyncOSX/releases.atom"
  name "RsyncOSX"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncOSX"

  depends_on macos: ">= :catalina"

  app "RsyncOSX.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncOSX",
    "~/Library/Preferences/no.blogspot.RsyncOSX.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState",
  ]
end
