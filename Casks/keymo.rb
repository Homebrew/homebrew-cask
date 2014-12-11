cask :v1 => 'keymo' do
  version '1.2.1'
  sha256 '6ae33f5287e8be279c87f0bb5d22e77f806b9e2438f826935de5d6df34641d67'

  url "http://manytricks.com/download/_do_not_hotlink_/keymo#{version.gsub('.','')}.dmg"
  appcast 'http://manytricks.com/keymo/appcast.xml'
  homepage 'http://manytricks.com/keymo'
  license :unknown    # todo: improve this machine-generated value

  app 'Keymo.app'

  zap :delete => '~/Library/Preferences/com.manytricks.Keymo.plist'
end
