cask 'semulov' do
  version '2.3.1'
  sha256 '8c98383faf0d95597043adc621d138a4c67d47a98b26e58afae8667ba85dd6b8'

  url 'https://www.kainjow.com/downloads/Semulov.zip'
  appcast 'https://kainjow.com/updates/semulov.xml',
          checkpoint: '3bd8f71d68b18b7f326e02b054439e1686b2e91b75ea6ac2c547ab68ca6c174d'
  name 'Semulov'
  homepage 'https://www.kainjow.com/'

  app 'Semulov.app'
end
