cask 'lilypond' do
  version '2.19.59-1'
  sha256 '69bae4faa6fbcbd5cc85c9fb81888966868d79b025335503d12ad54dcfdae1be'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'http://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: '694060f2f0ccc4816838a4365e1da4ff9244caede7986fc212a0b140565cb960'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
