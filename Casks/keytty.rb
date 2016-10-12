cask 'keytty' do
  version '1.1.9,1476234897'
  sha256 '9cfa4ab7d7567cb801df4c895ec92afff9903947977581a8c217d26545891bfe'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml',
          checkpoint: '311b96382866211a4ffe441d344746798b25764e17f47df98ac2a5b9eb9fd58a'
  name 'Keytty'
  homepage 'http://keytty.com/'

  app 'Keytty.app'

  zap quit:   'com.keytty.Keytty',
      delete: ['~/Library/Preferences/com.keytty.Keytty.plist', '~/Library/Application Support/Keytty', '~/Library/Caches/com.keytty.Keytty']
end
