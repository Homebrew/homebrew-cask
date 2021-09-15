cask "rsyncosx" do
  version "6.6.4"
  sha256 "924f058b7233aa1304a0e98c19ee6c294e8bb033842c26162a16165dd1ec896f"

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.#{version}.dmg"
  name "RsyncOSX"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncOSX"

  depends_on macos: ">= :big_sur"

  app "RsyncOSX.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncOSX",
    "~/Library/Preferences/no.blogspot.RsyncOSX.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState",
  ]
end
