cask 'gyazmail' do
  version '1.5.17'
  sha256 '44660863538177d323702e2b952a38246dfe3ff82ed3899df0a5162fdd375c96'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/',
          checkpoint: '30d8f8109aec27359a161c6b65a10d5f3d60371dae11ed32494a6e8eb1eea050'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
