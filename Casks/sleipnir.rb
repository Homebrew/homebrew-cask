cask 'sleipnir' do
  version '4.6.1'
  sha256 'ac6b0a09b918f6105199ca769717c8d28992f0f1d9694a6368fa403f79cf78ce'

  url 'https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
