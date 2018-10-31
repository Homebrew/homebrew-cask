cask 'dbngin' do
  version '14'
  sha256 '5c03167ef76f3a3df27dd8d026407da6a49da3e7badfc2c0a50cc23a61393cc3'

  # s3.amazonaws.com/dbngin-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dbngin-osx-builds/#{version}/DBngin.dmg"
  appcast 'https://dbngin.com/osx/version.xml'
  name 'DBngin'
  homepage 'https://dbngin.com/'

  auto_updates true

  app 'DBngin.app'

  zap trash: [
               '~/Library/Application Support/com.tinyapp.DBngin',
               '~/Library/Caches/com.tinyapp.DBngin',
               '~/Library/Cookies/com.tinyapp.DBngin.binarycookies',
               '~/Library/Preferences/com.tinyapp.DBngin.plist',
             ]
end
