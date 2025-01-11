cask "monal" do
  version "1019"
  sha256 "504ff269adabdcc357af5cbd8fbe003c6de971f47ab38b45a60c4a645bf842dd"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
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
