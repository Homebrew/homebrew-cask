cask 'dbngin' do
  version '20'
  sha256 'eed5de44d4f7000aa9722357f4815d2407bbb8873f87f0b667cbfd62b7d8fb32'

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
