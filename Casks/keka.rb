cask 'keka' do
  version '1.0.4'
  sha256 '0075741ed52e2c86d7749dfe2baf54c8b6dad75a780b4b51ca5fb14337124701'

  url "http://www.kekaosx.com/release/Keka-#{version}-intel.dmg"
  appcast 'http://www.kekaosx.com/update/keka.xml',
          checkpoint: '40bf3dfa927e2b377a98177f0362d459b39e96c60c45c5f0cfd53d305f01cbe3'
  name 'Keka'
  homepage 'http://kekaosx.com/'
  license :gratis

  app 'Keka.app'

  zap delete: '~/Library/Preferences/com.aone.keka.plist'
end
