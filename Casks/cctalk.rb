cask "cctalk" do
  version "7.10.7.2"
  sha256 :no_check

  url "https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103"
  name "CCtalk"
  desc "Real-time interactive education platform"
  homepage "https://www.cctalk.com/download/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+-*\d*)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "CCtalk.app"
end
