cask 'archi' do
  version '4.3.3'
  sha256 'eb01862a8ff9b93630bbb9a22c6ebac7f99e6c6770314607cdf89f7f7660b45b'

  url "https://www.archimatetool.com/downloads/#{version}/Archi-Mac-#{version}.zip",
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
