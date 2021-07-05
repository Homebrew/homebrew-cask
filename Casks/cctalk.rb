cask "cctalk" do
  version "7.8.5.3"
  sha256 "80ee2150bffeff9e8f4211acfb4c7589231533fabc23aad5cb31ffd456564263"

  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg",
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
