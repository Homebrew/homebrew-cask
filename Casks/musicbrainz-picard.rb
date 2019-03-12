cask 'musicbrainz-picard' do
  version '2.1.3'
  sha256 '91d0f06b9efdf2d23830068e329115ad5133038ea2586c1091c581d09d7bfec8'

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz.Picard.#{version}.dmg"
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
