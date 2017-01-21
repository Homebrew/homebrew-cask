cask 'musicbrainz-picard' do
  version '1.3.2'
  sha256 'e3a3139878d01cf4edd2fad20a9a6ced5d3ea669cb919e310a64947082dfdc15'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/',
          checkpoint: 'f2822b6f70f9d9c66a6a7fdbaf10de6b64f941e6983bdea86a9eb22cbffd0a4b'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  app 'MusicBrainz Picard.app'
end
