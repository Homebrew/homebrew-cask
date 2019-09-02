cask 'sleipnir' do
  version '4.6.5'
  sha256 'fd87b83113fa4205c1ba371f8b05a87aa30b46953549276ee1d28a87653ad6ec'

  url 'https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
