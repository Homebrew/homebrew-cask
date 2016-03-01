cask 'sleipnir' do
  version '4.5.2'
  sha256 '0b0871f813884c15ecea1e990fb6e1bda7cc5d3ae1fedf9de997db83036924c1'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'http://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: 'c9bd4c2f4630e9390d1adea5ae2847499e1ae81fee5672d2c6167349a3418482'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'
  license :closed

  app 'Sleipnir.app'
end
