cask "rsyncosx" do
  version "6.5.3"
  sha256 "4805b24871829bc4d9702a7f3140e26a2695bf9e9fc2858d0ad587c2bfb45de8"

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
