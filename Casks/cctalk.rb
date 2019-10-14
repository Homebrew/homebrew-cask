cask 'cctalk' do
  version '7.5.8.4'
  sha256 'cbcd806748c2ace0ea366833285be3ae6b55f2f3e4e84774c57e236eb20432e0'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
