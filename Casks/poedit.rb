cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "http://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.3'
    sha256 'dd17ff372583ddd29a7993b92bae20440b006a9907e249fc94b47ea6db6fc504'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => '7f8ed0d9267fbd46cf4fe9eb9655827518653dd322e6d4040c2ea59caca76a55'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
