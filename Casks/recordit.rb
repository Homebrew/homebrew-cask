cask 'recordit' do
  version '1.6.6'
  sha256 'c7a665123b14aade0bec5bb1a29709cfe71573fb2a44c0db9777bcedd3d6ee0f'

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          :sha256 => '61cb6dc1538206b6e522dab1db07e101a6ade1e013ad4af9748815305d32750d'
  name 'RecordIt'
  homepage 'http://recordit.co/'
  license :gratis

  app 'RecordIt.app'
end
