cask 'recordit' do
  version '1.6.10'
  sha256 '662b1be4eb2d6f91ffcd2ad9b705c30d670858400c99eea0829ccffbbdea7e1c'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          checkpoint: '2700c9a93af7e06acf5541a6598b46e6d325d0c4c2702c5e7f2ce81bd3a6efe1'
  name 'RecordIt'
  homepage 'http://recordit.co/'

  app 'RecordIt.app'
end
