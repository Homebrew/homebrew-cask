cask 'poedit' do
  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.8'
    sha256 '43c4c6aa3e60e46fc2bc69940e67be6d62647190439dc79743fd15867f855d2d'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '62c4200fecf78d21146fb9fb2fbde359ced2cd7860bf796960a8cd6e4c75e9c1'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
