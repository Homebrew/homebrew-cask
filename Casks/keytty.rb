cask 'keytty' do
  version '1.1.8,1475826505'
  sha256 '22abc07474dfdda74df3505ce4499b1e1cc4625196293a5783ab5387b4c8155b'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml',
          checkpoint: 'd4cdf07b530cce3260ac065c88a85a07d47fd8af9ff20e984e46866fb1968f99'
  name 'Keytty'
  homepage 'http://keytty.com/'

  app 'Keytty.app'

  zap quit:   'com.keytty.Keytty',
      delete: ['~/Library/Preferences/com.keytty.Keytty.plist', '~/Library/Application Support/Keytty', '~/Library/Caches/com.keytty.Keytty']
end
