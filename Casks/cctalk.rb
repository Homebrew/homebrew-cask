cask "cctalk" do
  version "7.8.2.1"
  sha256 "04c954ceec52f05943cfbe76ec05ec79a1410f868062ff4d0f6bdc758cd23807"

  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg",
      verified: "cc.hjfile.cn/"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  livecheck do
    url "https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
