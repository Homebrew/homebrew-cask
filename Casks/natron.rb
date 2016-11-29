cask 'natron' do
  version '2.1.4'
  sha256 'ec4e231fefa2063a06877353acdb5ad52d0ee87fa21e4b47a1fa51b366fc32cb'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '62b1dd010e40674cf6bdbabfe17dae6c8986ba8c5b8a3776eab63ecbc5d456fb'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
