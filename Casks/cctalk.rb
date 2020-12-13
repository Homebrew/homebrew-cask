cask "cctalk" do
  version "7.7.5.5"
  sha256 "0371d4fbbb8ace89062bc571d6b9767bff605af6cf2621e96970f0e1d0dfd65c"

  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg",
      verified: "cc.hjfile.cn/"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
