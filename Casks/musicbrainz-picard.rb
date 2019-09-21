cask 'musicbrainz-picard' do
  version '2.2.1'
  sha256 'a050b07798ed5aa06dc3f8283dc8bb4a94b76a1534305e18c1ab14d73073b910'

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz.Picard.#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/downloads/'
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
