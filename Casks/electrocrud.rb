cask 'electrocrud' do
  version '2.6.0'
  sha256 '8915ff804c9d9f392d3d0ca0201246a7b3a9a53a5eefbab3602572074dcee12a'

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast 'https://github.com/garrylachman/ElectroCRUD/releases.atom'
  name 'ElectroCRUD'
  desc 'Database CRUD Application Built on Electron'
  homepage 'https://github.com/garrylachman/ElectroCRUD'

  app 'ElectroCRUD.app'
end
