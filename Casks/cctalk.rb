cask "cctalk" do
  version "7.7.1-1082"
  sha256 "73311cac88f85c3dfaa8cda4dabef2253a4674eabf2120d0476e999bf26782d8"

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
