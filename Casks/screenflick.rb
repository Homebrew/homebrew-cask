cask 'screenflick' do
  version '2.7.50'
  sha256 'b6c889727c9e2c82d4dd1b88a190e4ba07684a368bca9d9ac24c0adb27635a5a'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
