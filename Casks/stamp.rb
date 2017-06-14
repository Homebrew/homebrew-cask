cask 'stamp' do
  version '4.7.1'
  sha256 '2c8a4b9470e1bc70942cd857e42f33b422268419916304d2c25f5c62bd01b0e3'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
