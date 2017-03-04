cask 'sleipnir' do
  version '4.5.5'
  sha256 '33bd05a8ac11aaa19d843908449bff7bc35bebc177be1a4905fc50693c3c4387'

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  appcast 'https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml',
          checkpoint: 'aa6698d2ce1bf7a2a2c4bbe1638e15aa5311ac5bb30001ce26526ff380dc2ee6'
  name 'Sleipnir'
  homepage 'http://www.fenrir-inc.com/sleipnir/'

  app 'Sleipnir.app'
end
