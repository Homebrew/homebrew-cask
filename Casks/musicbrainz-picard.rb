cask 'musicbrainz-picard' do
  version '2.2.2'
  sha256 '747e8ebaaf96dc33435bf72b588046a2a491404f6fb46278320e9aaa63bcfeae'

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz.Picard.#{version}.dmg"
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
