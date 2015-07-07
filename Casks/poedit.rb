cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "http://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.2'
    sha256 '8da5cddc1b019057b7636d5dabd04723eae25066cf9ee252a01a571e50364efd'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => 'e9a8bb8634538190abb5d904e23d9d2c4db9f29b97a4b612bf4308cedd8f060c'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
