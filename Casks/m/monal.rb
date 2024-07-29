cask "monal" do
  version "941"
  sha256 "13ce15efcfcf92e12bdee2fdc8f46b5fcc96eb6385c21d2097d60f84208a91fa"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on macos: ">= :catalina"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
