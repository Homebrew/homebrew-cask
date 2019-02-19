cask 'dbngin' do
  version '16'
  sha256 'da0fc018d196e0ff2f114c00b4cce73ab8414e2f6b3ba3b45321f56e454f76ff'

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
