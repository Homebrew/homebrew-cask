cask 'poedit' do
  if MacOS.version <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.0'
    sha256 'dfc1c72c94be5d60b746d21adcc6547bda44c07a41b9d1fc1bff283a7e8f3b80'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: 'dc3fcf04616fb4a1e6f3be206be2136975d149200be98f97dd1091a5cbc3bb9c'
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
