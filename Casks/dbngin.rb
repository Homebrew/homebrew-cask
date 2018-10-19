cask 'dbngin' do
  version '1.2'
  sha256 '3f714dfbf270fb1f2928c531af106edb509e85f4c72a12b8f4838e341bb9313d'

  # s3.amazonaws.com/dbngin-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dbngin-osx-builds/#{version.no_dots}/DBngin.dmg"
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
