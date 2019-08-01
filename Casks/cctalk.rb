cask 'cctalk' do
  version '7.5.5.2'
  sha256 'a0cf40c5bc1a973bbf3e46445a1867527805c2f67f61db223492f570cbc1c1cd'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=http://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
