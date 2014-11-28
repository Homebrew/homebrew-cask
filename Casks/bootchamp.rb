cask :v1 => 'bootchamp' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/BootChamp.zip'
  appcast 'http://kainjow.com/updates/bootchamp.xml'
  homepage 'http://www.kainjow.com/'
  license :oss

  app 'BootChamp.app'
end
