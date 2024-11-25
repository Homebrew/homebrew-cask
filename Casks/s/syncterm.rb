cask "syncterm" do
  version "1.3"
  sha256 "c94970eeece475f9c4159507f61c9910f2c9e6bae121c921db8a8786a747713a"

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
