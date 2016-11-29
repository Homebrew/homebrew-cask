cask 'sleipnir' do
  version '4.5.3'
  sha256 'dfe72382b8ead4893e09248abfd4503dac96102d2ed53705b0e54e61bc494d28'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: '5d96372ba37a9569808c6a25874223ec3f6db687d916302eabc313b525cda3c7'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'

  app 'Sleipnir.app'
end
