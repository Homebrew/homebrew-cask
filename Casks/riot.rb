cask 'riot' do
  version '0.9.2'
  sha256 'e7e9f8df7958f9c28705aef8bd70950eb192d8c23ed0bff203cdc08059859b60'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  name 'Riot'
  homepage 'https://riot.im/'

  app 'Riot.app'
end
