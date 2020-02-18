cask 'musicbrainz-picard' do
  version '2.3'
  sha256 'd8c6067caa0bf688d724bc8cccd440e7bc150373eac775ae7c4b20d430111069'

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/downloads/'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  depends_on macos: '>= :sierra'

  app 'MusicBrainz Picard.app'

  zap trash: [
               '~/.config/MusicBrainz',
               '~/Library/Caches/MusicBrainz',
               '~/Library/Preferences/org.musicbrainz.picard.plist',
               '~/Library/Saved Application State/org.musicbrainz.picard.savedState',
             ]
end
