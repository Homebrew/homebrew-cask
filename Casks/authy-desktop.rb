cask 'authy-desktop' do
  version '1.0.10'
  sha256 '64c76377fe993eca459bc0f470cd0eaef26e16f7b4ced75adfd46eaf2e37ae89'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/stable/#{version}/darwin/x64/installer.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  app 'Authy Desktop.app'

  zap delete: [
                '~/Library/Application Support/Authy Desktop',
                '~/Library/Caches/com.authy.authy-mac',
                '~/Library/Caches/com.authy.authy-mac.ShipIt',
                '~/Library/Cookies/com.authy.authy-mac.binarycookies',
                '~/Library/Preferences/com.authy.authy-mac.helper.plist',
                '~/Library/Preferences/com.authy.authy-mac.plist',
              ]
end
