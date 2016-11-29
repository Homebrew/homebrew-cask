cask 'keytty' do
  version '1.2.1,1478523599'
  sha256 'c10a61be158ade8d8505dd87fcfafb9577c4db1c746dc44f223710540d884dc2'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml',
          checkpoint: '7fd0b94dd90eab19e4be001ec520fb3ad5c1558c6d53acf8631639b561818b53'
  name 'Keytty'
  homepage 'http://keytty.com/'

  app 'Keytty.app'

  zap quit:   'com.keytty.Keytty',
      delete: ['~/Library/Preferences/com.keytty.Keytty.plist', '~/Library/Application Support/Keytty', '~/Library/Caches/com.keytty.Keytty']
end
