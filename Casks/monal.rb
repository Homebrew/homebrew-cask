cask "monal" do
  version "5.0,716"
  sha256 :no_check

  url "https://monal.im/macOS/Monal-macOS.tar.gz"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal.im/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Monal.app"
end
