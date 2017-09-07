cask 'audirvana-plus' do
  version '3.1.2'
  sha256 '9ae2fc62f508ddf4b2a05e1429d78297344d3a3e0ff89adf437a5c8ccd5f7346'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'e5750716acc800e5b0f6f8b38d1df80a2bdf44a8bd1a0fb3926312363e18fe09'
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
