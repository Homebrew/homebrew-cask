cask 'gyazmail' do
  version '1.6'
  sha256 '004fcdc5c2fe3efa5f8c3d2dcf5425517f659733285db56ec8e78ed042cc857c'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
