cask 'keytty' do
  version '1.1.7,1468903136'
  sha256 'ec9387f7640b067283bea1f1b46117e1c369e7f34d40d4593462a6916b725b92'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml',
          checkpoint: 'dc955a9d8cd12e3192300f4f66515de964e738a5141cc4d7466051df0e748aa8'
  name 'Keytty'
  homepage 'http://keytty.com/'
  license :closed

  app 'Keytty.app'

  zap quit:   'com.keytty.Keytty',
      delete: ['~/Library/Preferences/com.keytty.Keytty.plist', '~/Library/Application Support/Keytty', '~/Library/Caches/com.keytty.Keytty']
end
