cask "monal" do
  version "5.1.0,774"
  sha256 :no_check

  url "https://monal.im/macOS/Monal-macOS.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal.im/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
