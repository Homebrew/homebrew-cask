cask 'rythem' do
  version '2014-2-21'
  sha256 'd4c5c578fb0f4d155cc07af22184f88a9b190a7453d0dc45962fd179f72da34d'

  url "https://github.com/AlloyTeam/Rythem/releases/download/filter/Rythem-#{version}.dmg"
  appcast 'https://github.com/AlloyTeam/Rythem/releases.atom',
          checkpoint: 'b44420dfb2a0a02bafa8edf85fe57a421779419e0bfe29c2c60c3ef93eeb73d5'
  name 'Rythem'
  homepage 'https://github.com/AlloyTeam/Rythem'
  license :mit

  app 'Rythem.app'
end
