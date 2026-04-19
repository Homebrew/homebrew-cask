cask "monal@beta" do
  version "1088"
  sha256 "3beeca4715dcb75869a444e23ad70a590d493fe3291a3c901ee86a6b02e429ce"

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal"
  depends_on macos: ">= :big_sur"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
