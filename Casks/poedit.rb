cask 'poedit' do
  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.6'
    sha256 'ca51faff5a818e4bb1fab96055d1f1b5e45ca1c5e84110400397b6f57dc49dcf'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '5a83d975d617f0ffb39355c7cda82976b464f604cb45e58e512dca22b0f97589'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
