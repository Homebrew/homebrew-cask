cask 'gyazmail' do
  version '1.6.1'
  sha256 'af351cd431bfa7628074a0baad3fa4ab63bbbf4dff4e4d45df46f9e5055ae71e'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
