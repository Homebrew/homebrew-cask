cask 'folx' do
  version '5.1.13597'
  sha256 '128c78aee54b195a23d6e1c8a730447b12ce6c30ec1852d6a5a11a7a69389677'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'af8da469e29f9348247d26748f9ba6cadafee62fbc09606bf766974c1da920ae'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'
  license :freemium

  app 'Folx.app'
end
