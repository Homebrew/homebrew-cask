cask "monal" do
  version "1090"
  sha256 "8f4d9b47fb70ce3615c8e47d67c8e12a0ff4e2ea8a44d6edfe4e17b5958e5467"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on macos: ">= :big_sur"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
