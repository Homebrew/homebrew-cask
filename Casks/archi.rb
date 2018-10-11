cask 'archi' do
  version '4.3'
  sha256 'd3985e4ebb93ada39a24f232a68b27e95eb8cf3cccb1562de2c9a606ca1bd88f'

  url "https://www.archimatetool.com/downloads/root#{version.no_dots}/Archi-Mac-#{version}.zip",
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
