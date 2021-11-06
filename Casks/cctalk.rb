cask "cctalk" do
  version "7.9.0.3"
  sha256 "37b59274ec2db2fd9e45ca113982691529452813acc0ced3e5f30b95249b1f05"

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
