cask 'poedit' do
  if MacOS.version <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.9'
    sha256 'db2ef3da148e453c6d2dc8516fe3b1c66f5afd9b566acf4b1718558115c9e19c'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '745e8961354fe9438d74b1d0ec05e7b51574cd5cc75d220271e141f7ebfbe5b9'
  end

  name 'Poedit'
  homepage 'https://www.poedit.net/'

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
