cask :v1 => 'folx' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/downloader_mac.dmg'
  appcast 'http://mac.eltima.com/download/folx-update/folx3.xml'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'
  license :freemium

  app 'Folx.app'
end
