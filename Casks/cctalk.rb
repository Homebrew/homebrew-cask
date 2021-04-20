cask "cctalk" do
  version "7.8.3.1"
  sha256 "02a68e31c257c0674c9d19ec89674026afade5184cc89f655cd942f3ca930996"

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
