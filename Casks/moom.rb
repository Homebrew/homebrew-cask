cask :v1 => 'moom' do
  version '3.2.2'
  sha256 '8f9a5ce372ce6b8c992a123c4a531bcfac2483ca90fd9818475ac4eabe33ade2'

  url "http://manytricks.com/download/_do_not_hotlink_/moom#{version.gsub('.','')}.dmg"
  appcast 'http://manytricks.com/moom/appcast.xml'
  name 'Moom'
  homepage 'http://manytricks.com/moom/'
  license :commercial

  app 'Moom.app'

  zap :delete => [
                  '~/Library/Preferences/com.manytricks.Moom.plist',
                  '~/Library/Application Support/Many Tricks',
                 ]
end
