cask 'milanote' do
  version '1.0.9'
  sha256 'c09eec27601e8be53f8132b23a344b2fe5041bf6645a5ee6a83423a8efb1d6a1'

  # milanote-app-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg"
  name 'Milanote'
  homepage 'https://www.milanote.com/'

  app 'Milanote.app'

  zap delete: [
                '~/Library/Application Support/Milanote',
                '~/Library/Caches/com.milanote.app',
                '~/Library/Caches/com.milanote.app.ShipIt',
                '~/Library/Library/Logs/Milanote',
                '~/Library/Preferences/com.milanote.app.helper.plist',
                '~/Library/Preferences/com.milanote.app.plist',
              ]
end
