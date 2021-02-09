cask "cctalk" do
  version "7.8.1.7"
  sha256 "7b54c71c21339c68c7468b2386041eb4342b217debdceaa4d11fc2e8e8db1841"

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
