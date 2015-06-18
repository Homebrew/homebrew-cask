cask :v1 => 'sleipnir' do
  version :latest
  sha256 :no_check

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  name 'Sleipnir'
  appcast 'http://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          :sha256 => '1d8966375a83449bfc53ce47a41f1cd960b0f199a4ea319bf81333ab8a7ad030'
  homepage 'http://www.fenrir-inc.com/sleipnir/'
  license :closed

  app 'Sleipnir.app'
end
