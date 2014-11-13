cask :v1 => 'musicbrainz-picard' do
  version '1.3'
  sha256 'fa4785ae157b6fb269eec7bcb3c3c8a6f93faa563336364aa31946b51ae39ecb'

  url "ftp://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  homepage 'http://picard.musicbrainz.org'
  license :gpl

  app 'MusicBrainz Picard.app'
end
