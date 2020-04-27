cask 'dbngin' do
  version '30'
  sha256 '4971854fd6d6098de0142729b5dfdff8e6bfd49b94915b577edf062f17f9ecba'

  # dbngin-osx-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
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
