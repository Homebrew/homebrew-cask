cask 'poedit' do
  if MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.2.3'
    sha256 'df1c80c4c4a6c9e12c7a7565dbac83b81734825e07586e5bd784bf823af1e892'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
