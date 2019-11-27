cask 'audirvana' do
  version '3.5.26'
  sha256 '1915af25a5184d631d1f9951da834f9e13e43b52986206a50d90e81c1b8b09af'

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
