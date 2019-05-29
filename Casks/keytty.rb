cask 'keytty' do
  version '1.2.6,1550057399'
  sha256 '0b0401f77199168a398b2cbe764ab831564f2cc81a51f25c3e3a68850eb9a09f'

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
