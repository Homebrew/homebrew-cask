cask 'musicbrainz-picard' do
  version '1.4.2'
  sha256 '003a50a5124cf0809da6f5fb5076dbe41222c6571609b499eb75d54e480d0307'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/',
          checkpoint: '0c45c97c6847ff5462ccd16e7a95f0a2544eb34b2614c1deafa4b0c4ce03ac51'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  depends_on macos: '>= :lion'

  app 'MusicBrainz Picard.app'

  zap trash: [
               '~/.config/MusicBrainz',
               '~/Library/Caches/MusicBrainz',
               '~/Library/Preferences/org.musicbrainz.picard.plist',
               '~/Library/Saved Application State/org.musicbrainz.picard.savedState',
             ]
end
