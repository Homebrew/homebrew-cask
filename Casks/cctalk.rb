cask "cctalk" do
  version "7.10.6.5-1341"
  sha256 "582ee1502d4a5065482bb41b48dc7bb256ae2c43a3ce6720d6fa71914d383149"

  url "https://cc.hjfile.cn/cc/CCtalk#{version}/8/1/103/CCtalk#{version}.dmg",
      verified: "cc.hjfile.cn/cc/"
  name "CCtalk"
  desc "Real-time interactive education platform"
  homepage "https://www.cctalk.com/download/"

  livecheck do
    url "https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103"
    regex(/CCtalkv?(\d+(?:\.\d+)+-\d+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "CCtalk.app"
end
