cask 'keymo' do
  version '1.2.1'
  sha256 '6ae33f5287e8be279c87f0bb5d22e77f806b9e2438f826935de5d6df34641d67'

  url "https://manytricks.com/download/_do_not_hotlink_/keymo#{version.delete('.')}.dmg"
  appcast 'https://manytricks.com/keymo/appcast.xml',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo'
  license :commercial

  app 'Keymo.app'

  zap :delete => '~/Library/Preferences/com.manytricks.Keymo.plist'
end
