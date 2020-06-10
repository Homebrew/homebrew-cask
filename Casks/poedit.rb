cask 'poedit' do
  if MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.3.1'
    sha256 'a6e5314df29a1ac04a4798e28b74462b829c96f1d037058145083fea2a43e891'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
