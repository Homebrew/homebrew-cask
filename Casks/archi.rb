cask 'archi' do
  version '4.2'
  sha256 '6923830e1eac9fd11acddb56c241a7d5fb7f3ba6f90bed4e518a8da354977397'

  url "https://www.archimatetool.com/downloads/rel-#{version.no_dots}/Archi-Mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
