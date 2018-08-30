cask 'sleipnir' do
  version '4.6.0'
  sha256 '9d0c29ca3daea8fe6e337790c011cc03f92827ea5fc6099c1436a83d104ca6d0'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
