cask 'audirvana-plus' do
  version '3.1.5'
  sha256 'dc0ef583c3d2a2714258d8c8ef887e00f1adc60fe3a78c05c4941ad1033b63d3'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '5461e62649b987dea4f8b02c81be93f683450be28fc69474c497f6eb61b0bf1b'
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
