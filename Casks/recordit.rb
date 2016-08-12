cask 'recordit' do
  version '1.6.8'
  sha256 '1a18f527a10c0f9ba463fd747f96b5b863cbf19e9b90639181f614006307aeaa'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          checkpoint: '3aebe48af2c7fc59ac26cb9de9f5f7423569b1df3f59458237b2007b39bcaa92'
  name 'RecordIt'
  homepage 'http://recordit.co/'
  license :gratis

  app 'RecordIt.app'
end
