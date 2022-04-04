cask "cctalk" do
  version "7.9.4.3"
  sha256 "7dfbedb600463494dea1184569ad7128a9880202e0b3ed3cbf7cd91c17b3a7b6"

  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg",
      verified: "cc.hjfile.cn/"
  name "CCtalk"
  desc "Real-time interactive education platform"
  homepage "https://www.cctalk.com/download/"

  livecheck do
    url "https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "CCtalk.app"
end
