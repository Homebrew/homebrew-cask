cask "monal@beta" do
  version "1096"
  sha256 "765ca9e0cb8d24f929464f7f0ff629699119dc1e311b9682aa563e06e2abefc3"

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
    "~/Library/Containers/org.monal-im.prod.catalyst.monal",
    "~/Library/Group Containers/group.monal",
  ]
end
