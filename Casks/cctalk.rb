cask "cctalk" do
  version "7.9.1.1"
  sha256 "688added8cdaa0d2b6a7bd1ef9855d40df76d2beb6dfdc218a6e7dc065866b6a"

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
