cask 'sleipnir' do
  version '4.5.6'
  sha256 'a4d03e6c264274881157a04209ebbb3eabbf23c80197b6ecad8b04384be6e1d5'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: '2bcec747977792c3e31ab44d1cb71b1db52f2015ef3c2459b09112c7dd20cc3b'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/jp/sleipnir/'

  app 'Sleipnir.app'
end
