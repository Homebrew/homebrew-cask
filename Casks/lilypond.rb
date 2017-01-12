cask 'lilypond' do
  version '2.19.54-1'
  sha256 'b3ee3cb232ec793a2b99794caf5df94bbbc89c2494d4536eb9bf5577786f0a08'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'http://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: '8302a9ef0cb6c7efb06fd55ae4361b25f83af0776557cae10cef750f5f07a50b'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/lilypond"
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/lilypond-book"
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/convert-ly"

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
