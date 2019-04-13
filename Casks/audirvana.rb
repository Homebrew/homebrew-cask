cask 'audirvana' do
  version '3.5.1'
  sha256 '0ef2efe5c295ceb286ef3daec26fcc0b304a285604109b0e4831f4531d042c9e'

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_#{version.minor}_appcast.xml"
  name 'Audirvana'
  homepage 'https://audirvana.com/'

  app 'Audirvana.app'

  zap trash: [
               '/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist',
               '/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus',
               '~/Library/Caches/com.audirvana.Audirvana-Plus',
               '~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies',
               '~/Library/Preferences/com.audirvana.Audirvana-Plus.plist',
             ]
end
