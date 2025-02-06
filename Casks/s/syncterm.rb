cask "syncterm" do
  version "1.5"
  sha256 "e19d8a6ed81f27b36074c02251d232f2e134257e51bccce0e6cc9d3262fd2cb3"

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
