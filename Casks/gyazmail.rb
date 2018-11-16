cask 'gyazmail' do
  version '1.5.20'
  sha256 '162410ec7d57f3dad83102cb53ef0fec8eaa246698bb5963780664744fe3eccb'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
