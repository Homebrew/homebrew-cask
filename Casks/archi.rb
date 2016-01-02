cask 'archi' do
  version '3.3.1'
  sha256 '737d3287fdde718ed9a2363259efa814ff1c29feaf632bc6de594fdbe7c7af19'

  url "http://www.archimatetool.com/downloads/latest/Archi-mac64-#{version}.zip"
  name 'Archi'
  homepage 'http://www.archimatetool.com'
  license :mit

  app 'Archi/Archi.app'
end
