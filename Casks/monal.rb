cask "monal" do
  version "4.9,682"
  sha256 :no_check

  url "https://monal.im/Monal-OSX/Monal-OSX.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal.im/"

  depends_on macos: ">= :catalina"

  app "Monal.app"
end
