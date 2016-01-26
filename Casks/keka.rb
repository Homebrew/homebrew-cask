cask 'keka' do
  version '1.0.4'
  sha256 '0075741ed52e2c86d7749dfe2baf54c8b6dad75a780b4b51ca5fb14337124701'

  url "http://www.kekaosx.com/release/Keka-#{version}-intel.dmg"
  appcast 'http://update.kekaosx.com',
          checkpoint: '5e7c70cd27e0d1ced74d1e06bac8c7766a11fe8e9be7b29f1d40c73931b0537c'
  name 'Keka'
  homepage 'http://kekaosx.com/'
  license :gratis

  app 'Keka.app'

  zap delete: '~/Library/Preferences/com.aone.keka.plist'
end
