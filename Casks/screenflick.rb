cask 'screenflick' do
  version '2.7.51'
  sha256 '22ed09cceed01c9bbd056c36fe5c43a420df595712eaf5c9d49dba38bef14a02'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
