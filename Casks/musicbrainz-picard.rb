cask 'musicbrainz-picard' do
  version '1.3.2'
  sha256 'e3a3139878d01cf4edd2fad20a9a6ced5d3ea669cb919e310a64947082dfdc15'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org'
  license :gpl

  app 'MusicBrainz Picard.app'
end
