cask 'stamp' do
  version '4.5.1'
  sha256 '2b87577793b0b8a721963e1c85df930ba7773a1b17030e88979243bffc4558e7'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
