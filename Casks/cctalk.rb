cask "cctalk" do
  version "7.7.0.6"
  sha256 "fcb29bb3092e4ee6b7f7564cafaaf3ec19dec9c7b745a0ff5994cfad9b887bde"

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
