cask 'sleipnir' do
  version '4.5.4'
  sha256 'cede4cf9d285b2e4f2e1f13d2f38a031e394e15ebc9198c13adbb19ba56ffecf'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: '1e06ef7892b52f07b7b30d9d9c183974ff7da57d41934f6bc8e6d845b3109796'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'

  app 'Sleipnir.app'
end
