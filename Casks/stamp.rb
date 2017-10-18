cask 'stamp' do
  version '4.7.6'
  sha256 '8ab85042df337f6c1bcc6ffbe11f116ee8d879ef7ecf257a643071e88e56ccd4'

  url "https://freeyourmusic.com/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
