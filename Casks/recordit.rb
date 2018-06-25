cask 'recordit' do
  version '1.6.10'
  sha256 '662b1be4eb2d6f91ffcd2ad9b705c30d670858400c99eea0829ccffbbdea7e1c'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790'
  name 'RecordIt'
  homepage 'http://recordit.co/'

  app 'RecordIt.app'

  zap trash: [
               '~/Library/Application Support/Recordit',
               '~/Library/Caches/us.freshout.RecordIt',
               '~/Library/Preferences/us.freshout.RecordIt.plist',
             ]
end
