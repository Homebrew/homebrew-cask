cask 'authy' do
  version '1.6.0'
  sha256 'd8d4fe46e0e3cf39c3296e0c97d626cdfebc4be5e8eb141c1bca14e8eaf2cfb5'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/authy/stable/#{version}/darwin/x64/Authy%20Desktop-#{version}.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  auto_updates true

  app 'Authy Desktop.app'

  zap trash: [
               '~/Library/Application Support/Authy Desktop',
               '~/Library/Caches/com.authy.authy-mac',
               '~/Library/Caches/com.authy.authy-mac.ShipIt',
               '~/Library/Cookies/com.authy.authy-mac.binarycookies',
               '~/Library/Preferences/com.authy.authy-mac.helper.plist',
               '~/Library/Preferences/com.authy.authy-mac.plist',
             ]
end
