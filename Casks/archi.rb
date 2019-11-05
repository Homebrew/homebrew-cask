cask 'archi' do
  version '4.5.1'
  sha256 '32c705fec35a3ff8384bb13da93545fbb1104f78488309c6a4851c0f963d68c3'

  url "https://www.archimatetool.com/downloads/#{version.no_dots}/Archi-Mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
