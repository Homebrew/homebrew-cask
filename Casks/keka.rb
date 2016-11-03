cask 'keka' do
  version '1.0.5'
  sha256 '0075741ed52e2c86d7749dfe2baf54c8b6dad75a780b4b51ca5fb14337124701'

  url "http://www.kekaosx.com/release/Keka-#{version}-intel.dmg"
  appcast 'http://www.kekaosx.com/update/keka.xml',
          checkpoint: 'b9ef692d877af3c3bb2e9f6dfc679786ed3cfad538f4fdb2485e592d55d600cb'
  name 'Keka'
  homepage 'http://kekaosx.com/'

  app 'Keka.app'

  zap delete: '~/Library/Preferences/com.aone.keka.plist'
end
