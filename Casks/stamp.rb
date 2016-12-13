cask 'stamp' do
  version '4.4.3'
  sha256 '0c183b8acdaaa51732be8b9baf0e7ab5beb9c7989e7d92670d829697214e5841'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
