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
    version '2.0.3'
    sha256 '2ca5d5368704d4c472d45bca8e0956adfedd5839813504fb6a7e22a768fe971b'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: 'c8f875eabf349c6628420370b9a3c9fcebc1dee8e24e97f4f707d095873e8612'
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
