cask 'poedit' do
  if MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.3'
    sha256 '85009ceba3ded8ea088c5c39d39e1b8dc1010821141a4680e68dfcc967bedc88'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
