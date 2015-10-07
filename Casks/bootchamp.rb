cask :v1 => 'bootchamp' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/BootChamp.zip'
  name 'BootChamp'
  appcast 'http://kainjow.com/updates/bootchamp.xml',
          :sha256 => 'e3304e693f6f12a77ff2560785f7b7f35ac90013595d3bfbe349e199b6d5ad61'
  homepage 'http://www.kainjow.com/'
  license :oss

  app 'BootChamp.app'
end
