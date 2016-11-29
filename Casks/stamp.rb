cask 'stamp' do
  version '4.4.1'
  sha256 'c8f03293c4007563f558318837fe28b7971706a3407383041d8d0b983bdd2ff1'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
