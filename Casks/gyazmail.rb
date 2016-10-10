cask 'gyazmail' do
  version '1.5.17'
  sha256 '44660863538177d323702e2b952a38246dfe3ff82ed3899df0a5162fdd375c96'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
