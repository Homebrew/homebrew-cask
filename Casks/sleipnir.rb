cask 'sleipnir' do
  version '4.5.7'
  sha256 '4a68918732e5365cb0ca3b38b5731f6dfe103380a671cb1f6c8a3ba1a20ec480'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: '02fb658905c9f306799788db97c23a0fc403862a866e65c231d9614eda72f50b'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
