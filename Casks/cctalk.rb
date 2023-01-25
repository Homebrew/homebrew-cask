cask "cctalk" do
  version "7.10.1-1331"
  sha256 "d37a12dbbe06cbe1a7dbd13a3c074a6f82789b56abc1c82933d92601cf0a0634"

  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg",
      verified: "cc.hjfile.cn/"
  name "CCtalk"
  desc "Real-time interactive education platform"
  homepage "https://www.cctalk.com/download/"

  livecheck do
    url "https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103"
    regex(/CCtalk[._-]v?(\d+(?:\.\d+)+-\d+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "CCtalk.app"
end
