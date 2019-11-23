cask 'cctalk' do
  version '7.6.1.11'
  sha256 'bab460c7e06161b72f63a7a569c04e7ba930ebcc1f32a2b85137ddc364476878'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "http://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
