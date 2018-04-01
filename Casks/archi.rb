cask 'archi' do
  version '4.2'
  sha256 '6923830e1eac9fd11acddb56c241a7d5fb7f3ba6f90bed4e518a8da354977397'

  url "https://www.archimatetool.com/downloads/release/Archi-Mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: '1b7809cd366d312492d8a67dc2e9e4b9f343ef7fefca033f7718d7d3790826e4'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
