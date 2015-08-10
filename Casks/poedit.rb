cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "http://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.4'
    sha256 '5551d354865070fefd6c7bd5582dfcb0879e6ea41484dd7a3320183714b9bb3d'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => 'f5578c3b403179adc8defd416df7660470dbae1c51bf84c2f39eef20ca54e345'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
