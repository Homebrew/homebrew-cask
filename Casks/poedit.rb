cask 'poedit' do
  if MacOS.version <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '4f5cec737829dd700e6fdace1af3a844d659e0edec28eba2f3345377ebcc3e3d'
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
