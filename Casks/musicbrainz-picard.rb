cask 'musicbrainz-picard' do
  version '2.0.4'
  sha256 'c54c424906c1faad122e901c6f487687e5bd8314f3a77b6c593e53a56c6e293a'

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
