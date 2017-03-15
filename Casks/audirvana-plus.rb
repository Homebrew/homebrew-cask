cask 'audirvana-plus' do
  version '3.0.2'
  sha256 'bd0b19314e567ba0ca0f38eee9286925c3d31315d762598c7105bfe83ca096d8'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '377d6d49236c794f858eddd352cc726ba03c4a7cf0aa9f351cc09a1a93081d3d'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'

  zap delete: [
                '/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist',
                '/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus',
                '~/Library/Caches/com.audirvana.Audirvana-Plus',
                '~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies',
                '~/Library/Preferences/com.audirvana.Audirvana-Plus.plist',
              ]
end
