cask 'lilypond' do
  version '2.19.61-1'
  sha256 'db415bd8332fbb02853dcd4f66be6b8f5326e5b0144a6e44743bd4aeefb59f0d'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'http://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: 'c4bed67fabce3ea6b4929db72714173c5b98cac0b881108a9a35eee3764c6cd4'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
