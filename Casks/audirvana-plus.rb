cask 'audirvana-plus' do
  version '3.2.11'
  sha256 'd82532ea0052dda09d885f2e85ab69fe14745ee67ccd60c464abcadb5ff555a1'

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
