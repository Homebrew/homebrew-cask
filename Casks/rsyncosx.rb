cask "rsyncosx" do
  version "6.5.4"
  sha256 "fb63ee3846210ac8d01106fc32f0683efe295110334aa93a3c67ff66e262ec65"

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
