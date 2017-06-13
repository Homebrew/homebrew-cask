cask 'onlyoffice' do
  version '4.3'
  sha256 'cc71c3e66059e209910b8e273f9c9493e098a392e60735f981c135ab6a9bc2ce'

  url "http://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'http://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml',
          checkpoint: 'c46e9714ef779a757717ee2ef2c2663b1ef714ac0b974cd8c8dcd3fcf4ec6e13'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
