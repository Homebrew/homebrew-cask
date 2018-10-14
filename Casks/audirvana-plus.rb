cask 'audirvana-plus' do
  version '3.2.12'
  sha256 '6a60973ac6e4ff7dfb44ecb37ab1b0dcd6b5c9043898ae577e9f6c221ed15815'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml"
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'

  zap trash: [
               '/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist',
               '/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus',
               '~/Library/Caches/com.audirvana.Audirvana-Plus',
               '~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies',
               '~/Library/Preferences/com.audirvana.Audirvana-Plus.plist',
             ]
end
