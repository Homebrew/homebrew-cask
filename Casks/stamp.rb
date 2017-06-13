cask 'stamp' do
  version '4.6.3'
  sha256 '02c26def4301964cc1a884d520842e1e67445328e2923c1e2ca3995a1e7b92ee'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
