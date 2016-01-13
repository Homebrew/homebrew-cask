cask 'sleipnir' do
  version :latest
  sha256 :no_check

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'http://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          :checkpoint => '8110c0f3ca1df9c454f9e936b49bd09de2d673a3e6be8700e1e9a83fc5ca0498'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'
  license :closed

  app 'Sleipnir.app'
end
