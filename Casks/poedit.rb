cask 'poedit' do
  if MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.2.2'
    sha256 'e41bf32bbb21607217e6d58186ec586f9a65ac7f1a7ee8ab1173a2c729df55c0'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast'
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
