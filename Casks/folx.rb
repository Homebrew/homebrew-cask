cask 'folx' do
  version '5.1'
  sha256 '22a9d4a37444b91ad2f66625839eea706ba5310c66d8d796e7f5b1691ab10f3a'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'af8da469e29f9348247d26748f9ba6cadafee62fbc09606bf766974c1da920ae'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'
  license :freemium

  app 'Folx.app'
end
