cask 'keytty' do
  version '1.2.0,1476667481'
  sha256 '20d6d6d3a8a935b9edee353b7f39a394c89ef9e2ab349b74c5a47d1b95af1c03'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml',
          checkpoint: '387ed2865a3ac036f27bc112b012fd46d408f3a5ed035d708a567fef58ba58a9'
  name 'Keytty'
  homepage 'http://keytty.com/'

  app 'Keytty.app'

  zap quit:   'com.keytty.Keytty',
      delete: ['~/Library/Preferences/com.keytty.Keytty.plist', '~/Library/Application Support/Keytty', '~/Library/Caches/com.keytty.Keytty']
end
