cask 'sleipnir' do
  version :latest
  sha256 :no_check

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'http://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          :sha256 => '54a552006d3b3b6362a00a9be41177165707b82c2ee7f8c00f8dc778da02dfc8'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'
  license :closed

  app 'Sleipnir.app'
end
