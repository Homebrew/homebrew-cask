cask 'dbngin' do
  version '20'
  sha256 'cc91a7b96a26efb76f9da6eff8d5b0b699102fabb78e8d4af72387a1f4b841f3'

  # dbngin-osx-builds.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://dbngin-osx-builds.s3.amazonaws.com/#{version}/DBngin.dmg"
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
