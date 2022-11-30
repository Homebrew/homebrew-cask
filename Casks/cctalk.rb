cask "cctalk" do
  version "7.10.0.1"
  sha256 "3764ffeb9e63b9de570064fec29b69dcfe5c0dd9d9613e23cbfc3764b061ea12"

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
