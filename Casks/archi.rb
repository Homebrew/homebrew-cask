cask 'archi' do
  version '4.5.0'
  sha256 '9f22ce2270c1a947dfab2076837691b133933a5060bb1ee7b2fc11ef5b9d1d6c'

  url "https://www.archimatetool.com/downloads/#{version}/Archi-Mac-#{version}.zip",
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
