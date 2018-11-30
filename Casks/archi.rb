cask 'archi' do
  version '4.3.1'
  sha256 'ab82f4d7b9c14cf7259cbe9c06f698bc31e2ef11864769cf6d21e0b0c86368c6'

  url "https://www.archimatetool.com/downloads/#{version}/Archi-Mac-#{version}.zip",
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
