cask 'cctalk' do
  version '7.6.4.18'
  sha256 '2f5c2e7329838f20f8423c40a59bb50eec68657cda8362859f6fc1e2d204b116'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
