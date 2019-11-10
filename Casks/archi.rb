cask 'archi' do
  version '4.6.0'
  sha256 '2cc75122d6e1fb9ce9cf99488aeb041c07cec0df237e9bd496f6f8dc4cf66cbc'

  url "https://www.archimatetool.com/downloads/#{version.no_dots}/Archi-Mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
