cask 'recordit' do
  version '1.6.7'
  sha256 '1a18f527a10c0f9ba463fd747f96b5b863cbf19e9b90639181f614006307aeaa'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          checkpoint: '392e12827798791e63fbed1555cc7e83f07c0834a1f79d33d787ca0c88e75dde'
  name 'RecordIt'
  homepage 'http://recordit.co/'
  license :gratis

  app 'RecordIt.app'
end
