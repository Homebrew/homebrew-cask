cask 'gyazmail' do
  version '1.5.21'
  sha256 '6518565a461f2cf7c5acf1786b0bad752fa1e819e64c1d7d18a2ebe5d11ffce0'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
