cask "monal" do
  version "1092"
  sha256 "559da3f9bba9a6c50d3a39ff0c38b01bf86a8e7da0e11eee323cc0e835aa0764"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on macos: :big_sur

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
