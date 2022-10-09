cask "monal" do
  version "821"
  sha256 :no_check

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
