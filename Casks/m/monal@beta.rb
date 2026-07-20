cask "monal@beta" do
  version "1091"
  sha256 "75c3befd97497c4aeff9868fd52ab9c7c1a17bc9f851cdc284e7d5029628d689"

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

  zap trash: "~/Library/Group Containers/group.monal"
end
