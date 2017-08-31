cask 'audirvana-plus' do
  version '3.1.1'
  sha256 '23656b75c257276ceaa8c1aa2d7899fdf04e878d35fa6b278b3732084201476b'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '8c3789c04cf9340a888c8f8c1a8939110e0441b65cf8321bd2982592c852d913'
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
