cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "http://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.5'
    sha256 '429dff9b75c2e1c14792434db9dc3840982a8bcc9138ff285c057f5ee17a8e70'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => 'b1cde7d83fbb74d3e75ab1536b89ba463d6f743340be01eb0517074ded08f6ff'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
