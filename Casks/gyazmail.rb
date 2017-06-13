cask 'gyazmail' do
  version '1.5.18'
  sha256 '0c0d89b8c92f158ecb2042c6e310b60de269f1e17d27e5d2140f675f40b4ac6f'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/',
          checkpoint: '5f3d0523f6b92d529892e8910b161de323130ae2d3b833c4dbc52b0b7ef3ae72'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
