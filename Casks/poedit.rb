cask 'poedit' do
  if MacOS.version <= :mavericks
    version '1.8.12'
    sha256 '0aa721a0733eb04635685d280093aeef56b28c0baddf0fc265e1c7d448dbc615'

    url "https://poedit.net/dl/Poedit-#{version}.zip"
  else
    version '2.2.4'
    sha256 'b6e8801f72d442efcb3c15a7d0c965df14e69bcd494352a37d45b065e1bb3ceb'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  end

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
