cask 'audirvana' do
  version '3.5'
  sha256 'df54107959fc6a7f8eb64ed1866add7cf78f2a2527fff8de9ec89767b3a7b9b9'

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
