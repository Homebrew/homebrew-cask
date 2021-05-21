cask "rsyncui" do
  version "1.1.0"
  sha256 "969789a8a4e9ebc186d47f7ed96a22bd7e63096384495eab51b9d5a4cc01ded4"

  url "https://github.com/rsyncOSX/RsyncUI/releases/download/v#{version}/RsyncUI.#{version}.dmg"
  name "RsyncUI"
  desc "UI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncUI"

  depends_on macos: ">= :big_sur"

  app "RsyncUI.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncUI",
    "~/Library/Preferences/no.blogspot.RsyncUI.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncUI.savedState",
  ]
end
