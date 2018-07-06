cask 'sleipnir' do
  version '4.5.10'
  sha256 '384b646c53f62c1c52e1a480bd8182150bcd2c39ab7c4066cb6c2890fbb6d0bc'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
