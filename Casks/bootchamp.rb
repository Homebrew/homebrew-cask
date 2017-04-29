cask 'bootchamp' do
  version '1.7'
  sha256 'a6494fbc9efd057d8f25ba3aa8122e2b037145cc78e1bba12c69401afc06d0bc'

  url 'https://kainjow.com/downloads/BootChamp.zip'
  appcast 'https://kainjow.com/updates/bootchamp.xml',
          checkpoint: 'e3304e693f6f12a77ff2560785f7b7f35ac90013595d3bfbe349e199b6d5ad61'
  name 'BootChamp'
  homepage 'https://www.kainjow.com/'

  app 'BootChamp.app'
end
