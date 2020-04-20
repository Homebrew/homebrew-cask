cask 'cctalk' do
  version '7.6.5-1028'
  sha256 'aec0c44d06f918ce63efd0b8d86cfd7b792c520af9fec334146e776680009181'

  # cc.hjfile.cn/ was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/CCtalk.#{version}/8/1/103/CCtalk.#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
