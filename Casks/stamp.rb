cask 'stamp' do
  version '4.4.4'
  sha256 'b7d9208c3a4686914618beafcf2613566d3ec0f1108705780ce45d0077ef86cc'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
