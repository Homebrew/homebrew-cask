cask 'sleipnir' do
  version '4.5.8'
  sha256 'f94759d0061a6c666d75486aa574c4ab27d6fe3621c616546e4e7befe32c52e0'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: '0bee6e1f3e97bc49e3b9200ae5831861f15e426f20ae05bc975d08b316ce864f'
  name 'Sleipnir'
  homepage 'https://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
