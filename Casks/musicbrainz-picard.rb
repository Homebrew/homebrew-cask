cask 'musicbrainz-picard' do
  version '1.4.2'
  sha256 '003a50a5124cf0809da6f5fb5076dbe41222c6571609b499eb75d54e480d0307'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/',
          checkpoint: '7693e05f7c2c194a8ad62a063e785c49fbe03a41c91020d447e654295a31f10c'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  app 'MusicBrainz Picard.app'

  zap trash: [
               '~/.config/MusicBrainz',
               '~/Library/Caches/MusicBrainz',
               '~/Library/Preferences/org.musicbrainz.picard.plist',
               '~/Library/Saved Application State/org.musicbrainz.picard.savedState',
             ]
end
