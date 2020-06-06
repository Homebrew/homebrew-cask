cask 'cctalk' do
  version '7.6.7.9'
  sha256 '82983490f55ab5b4e37c184d47a5e59bf6376cc742f7a6c2aaba1f18668f6d78'

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
