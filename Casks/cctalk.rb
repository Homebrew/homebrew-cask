cask "cctalk" do
  version "7.9.9.2"
  sha256 "7b22bab536ec4fe27e106ff9f37c103681ad8226153c10ea78a90ad8d4359a40"

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
