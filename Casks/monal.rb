cask "monal" do
  version "5.0,712"
  sha256 :no_check

  url "https://monal.im/Monal-OSX/Monal-OSX.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal.im/"

  livecheck do
    skip "unversioned URL"
  end

  depends_on macos: ">= :catalina"

  app "Monal.app"
end
