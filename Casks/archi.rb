cask 'archi' do
  version '3.3.2'
  sha256 '77676360b17834e1bfca55d7d7df90c3104135c812aefc0946022b113b1d5be7'

  url "http://www.archimatetool.com/downloads/latest/Archi-mac64-#{version}.zip"
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
