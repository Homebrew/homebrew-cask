cask 'musicbrainz-picard' do
  version '1.4'
  sha256 'c3eacf30cfc4dcdafd617619ea774ab203343f889ef5b7d61163e21e473a0833'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/',
          checkpoint: '4a3d91d42a68edd818853e230e296805c480af637053cfbc0c2a7f4f7ab7c00d'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  app 'MusicBrainz Picard.app'
end
