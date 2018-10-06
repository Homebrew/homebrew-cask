cask 'keytty' do
  version '1.2.5,1536241217'
  sha256 '929e2c79637c8b1b9eef66d20383b8b19a3dda48c83376f98fdb456a6c411f9f'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml'
  name 'Keytty'
  homepage 'https://keytty.com/'

  app 'Keytty.app'

  uninstall quit: 'com.keytty.Keytty'

  zap trash: [
               '~/Library/Preferences/com.keytty.Keytty.plist',
               '~/Library/Application Support/Keytty',
               '~/Library/Caches/com.keytty.Keytty',
             ]
end
