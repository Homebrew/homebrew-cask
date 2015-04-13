cask :v1 => 'musicbrainz-picard' do
  version '1.3.2'
  sha256 'e3a3139878d01cf4edd2fad20a9a6ced5d3ea669cb919e310a64947082dfdc15'

  url "ftp://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  name 'Picard'
  homepage 'http://picard.musicbrainz.org'
  license :gpl
  tags :vendor => 'MusicBrainz'

  app 'MusicBrainz Picard.app'
end
