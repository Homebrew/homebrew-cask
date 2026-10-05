cask "monal@beta" do
  version "1097"
  sha256 "837e8b4a75cf8cfdb2448201a2c40b10428fdf47ba55894dc11a0193284c5ddd"

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
