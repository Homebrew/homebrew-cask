cask "cctalk" do
  version "7.7.2.2"
  sha256 "00f7e6be63b26ddb4ba5d565b5b85a8bc4139188d0215c80080985d90b736b6f"

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
