cask 'audirvana-plus' do
  version '3.2.7'
  sha256 'f00216760fcbdb27dd75470ce3e0d37091cd7c22daa6f1043de8bfeda63cf67c'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '82bd50967eba5d32b00152835a684f5a69ef9f5c0d3a28b10b3db0e312c32b91'
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
