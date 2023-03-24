cask "cctalk" do
  version "7.10.3-1332"
  sha256 "7f4016cc5754d6fc89120401f1329f6e746934d0d4949b4496edb8a2aef12cfb"

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
