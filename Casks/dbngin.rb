cask 'dbngin' do
  version '1.0'
  sha256 '32f2c4ab72a82e45c12f5464a250a415a95bc8a33989201ad75020a2a4fc80d7'

  # s3.amazonaws.com/dbngin-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dbngin-osx-builds/#{version.no_dots}/DBngin.zip"
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
