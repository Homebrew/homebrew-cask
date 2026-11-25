cask "monal@beta" do
  version "1100"
  sha256 "f0956b00e4e0881c8e191c3d52ec674827199b7f0259e8dcfebd41947998aa74"

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
