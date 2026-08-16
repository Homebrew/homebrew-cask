cask "monal@beta" do
  version "1093"
  sha256 "bdb29bd3351a680649401e53c4dc424e92871d32ee9eb9699d435442b9e64694"

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal"
  depends_on macos: :big_sur

  app "Monal.app"

  uninstall quit: "org.monal-im.prod.catalyst.monal"

  zap trash: [
    "~/Library/Application Scripts/group.monal",
    "~/Library/Application Scripts/org.monal-im.prod.catalyst.monal",
    "~/Library/Containers/org.monal-im.prod.catalyst.monal",
    "~/Library/Group Containers/group.monal",
  ]
end
