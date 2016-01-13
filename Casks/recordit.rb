cask 'recordit' do
  version '1.6.7'
  sha256 '1a18f527a10c0f9ba463fd747f96b5b863cbf19e9b90639181f614006307aeaa'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          :checkpoint => 'fb7a68dd244f78017739dbacf003224a8804bdf3fd50886efc2b9f8debb715e1'
  name 'RecordIt'
  homepage 'http://recordit.co/'
  license :gratis

  app 'RecordIt.app'
end
