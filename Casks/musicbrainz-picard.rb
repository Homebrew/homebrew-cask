cask 'musicbrainz-picard' do
  version '2.0.3'
  sha256 '6bd1b37b48caa7a427bfbd1f875887c62a818e613711372b87fb3a0536deadaa'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  depends_on macos: '>= :yosemite'

  app 'MusicBrainz Picard.app'

  zap trash: [
               '~/.config/MusicBrainz',
               '~/Library/Caches/MusicBrainz',
               '~/Library/Preferences/org.musicbrainz.picard.plist',
               '~/Library/Saved Application State/org.musicbrainz.picard.savedState',
             ]
end
