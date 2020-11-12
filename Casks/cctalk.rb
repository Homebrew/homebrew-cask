cask "cctalk" do
  version "7.7.4.7"
  sha256 "8310daec18388a3738b89045f9d3b7b83c9bacbfd79b6b2489d619bfd530594a"

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103"
  name "CCtalk"
  homepage "https://www.cctalk.com/download/"

  depends_on macos: ">= :yosemite"

  app "CCtalk.app"
end
