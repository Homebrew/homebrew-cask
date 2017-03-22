cask 'lilypond' do
  version '2.18.2-1'
  sha256 '0009bf234db6a598e30940ae9a5cef50ffe939992c9bf0c7959ecd9c0d179c80'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'http://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: '622d9e97054905e6fe42ded188ed101d42aebeda876d11119fafd60b56b428cf'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
