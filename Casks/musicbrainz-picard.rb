cask :v1 => 'musicbrainz-picard' do
  version '1.3.1'
  sha256 '48200ff9505a76d5d2b969d2d3367c497b90f3344f2c75d6bf266014ab549338'

  url "ftp://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  homepage 'http://picard.musicbrainz.org'
  license :gpl

  app 'MusicBrainz Picard.app'
end
