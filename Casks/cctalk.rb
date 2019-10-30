cask 'cctalk' do
  version '7.6.0.10'
  sha256 '066f09812da123545371cc0c37a690ae7f9842a975fffdb88ae47780595cdd79'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "http://cc.hjfile.cn//#{version}/8/1/103/#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.cctalk.com/webapi/basic/v1.1/version/down%3Fapptype=1%26terminalType=8%26versionType=103'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
