cask "syncterm" do
  version "1.4"
  sha256 "f02c56d753a7d851ba8a18219395f4bebf5886e5e29b0bd0e0a7b68c8eb5c62a"

  url "https://downloads.sourceforge.net/syncterm/syncterm/syncterm-#{version}/syncterm-#{version}-macos.zip",
      verified: "sourceforge.net/syncterm/"
  name "SyncTERM"
  desc "BBS terminal program"
  homepage "https://syncterm.bbsdev.net/"

  app "SyncTERM.app"

  zap trash: [
    "~/Library/Preferences/SyncTERM",
    "~/Library/Preferences/syncterm.plist",
  ]
end
