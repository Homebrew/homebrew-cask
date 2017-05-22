cask 'lilypond' do
  version '2.19.60-1'
  sha256 'f96d9a51fb38b0acd60f037d13fd12347ea315a9e09318fb34ee664e8edd0ddb'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'http://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: 'a0c5e6bc2f2555b5e3ffaf117a969c8d59714aee760ed7cdda98e17163079d79'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
