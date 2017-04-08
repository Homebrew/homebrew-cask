cask 'audirvana-plus' do
  version '3.0.4'
  sha256 'c608afa0e34053aa1efa9f9db5cf9457ad36006e8f92be4d66d71a5892830a91'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'd8e5efdb5f2702fcd06c94c45958b83d726c91ed95286fbb2f7185a56e0498b5'
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
