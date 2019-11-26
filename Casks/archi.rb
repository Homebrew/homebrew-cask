cask 'archi' do
  version '4.6.0,201911'
  sha256 '761a1f37af04fc2dc1bb8d9d250f2c4251a08c47ed4893c13fe087800e029030'

  url "https://www.archimatetool.com/downloads/#{version.after_comma}/Archi-Mac-#{version.before_comma}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
