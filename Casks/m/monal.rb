cask "monal" do
  version "1094"
  sha256 "1508c1e1a280fe5829016bbfe2750a32d3c143b8a58e168db0190591a590b22f"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on :macos

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
