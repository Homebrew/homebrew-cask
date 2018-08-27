cask 'gyazmail' do
  version '1.5.19'
  sha256 '666b40963967133c4d44e1348a902c57bb4528d723538b93fbc4e545e41200b5'

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast 'http://gyazsquare.com/gyazmail/'
  name 'GyazMail'
  homepage 'http://gyazsquare.com/gyazmail/'

  app 'GyazMail.app'
end
