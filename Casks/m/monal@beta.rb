cask "monal@beta" do
  version "1099"
  sha256 "b41725008a760aa65665ab39714cf471d18710db32c35309678186c12f2e5683"

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal"
  depends_on :macos

  app "Monal.app"

  uninstall quit: "org.monal-im.prod.catalyst.monal"

  zap trash: [
    "~/Library/Application Scripts/group.monal",
    "~/Library/Application Scripts/org.monal-im.prod.catalyst.monal",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.monal-im.prod.catalyst.monal.sfl*",
    "~/Library/Containers/org.monal-im.prod.catalyst.monal",
    "~/Library/Group Containers/group.monal",
  ]
end
