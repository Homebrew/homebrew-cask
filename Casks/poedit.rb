cask 'poedit' do
  if MacOS.version <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.11'
    sha256 'e6ae6b2c89edf636a53a1f71f7ab7c89737b554ec40b4bbad206a632139c740c'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '858efa613a533fa02c708e17020f3e2a8a08eb1e0db0113018857863d26bd0ab'
  end

  name 'Poedit'
  homepage 'https://www.poedit.net/'

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
