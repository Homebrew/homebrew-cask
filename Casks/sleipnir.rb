cask 'sleipnir' do
  version '4.6.4'
  sha256 '222424ce754db4eb162ce25890351b551a15d8d1eb3312aabd9fe1ae412ea6fc'

  url 'https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
