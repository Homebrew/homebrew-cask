cask 'musicbrainz-picard' do
  version '1.4.1'
  sha256 '423f7b21a048e94b8889acd45bb70fc4b8b0b8bbd18437c8394bd747462ab089'

  url "http://ftp.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/',
          checkpoint: 'ccbaa3d95f931ebff6c4f7d27794a32dfdafcdb4bbb7ae88f39cd95680916040'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  app 'MusicBrainz Picard.app'
end
