cask 'rythem' do
  version '2014-2-21'
  sha256 'd4c5c578fb0f4d155cc07af22184f88a9b190a7453d0dc45962fd179f72da34d'

  url "https://github.com/AlloyTeam/Rythem/releases/download/filter/Rythem-#{version}.dmg"
  appcast 'https://github.com/AlloyTeam/Rythem/releases.atom'
  name 'Rythem'
  homepage 'https://github.com/AlloyTeam/Rythem'

  app 'Rythem.app'
end
