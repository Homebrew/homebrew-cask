cask 'gyazmail' do
  version '1.6.2'
  sha256 '4d23d0de517aa1558515a7fce4eb6c6ffc1de55538b697c9033a21c1f4218e34'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
