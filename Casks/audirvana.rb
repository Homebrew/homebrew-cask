cask 'audirvana' do
  version '3.5.2'
  sha256 '3d0f0e5aae57203a86abbaca51a06d09a2a57fbf39de3d3408282cbf9861d5dd'

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
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
