cask :v1 => 'folx' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/downloader_mac.dmg'
  appcast 'http://mac.eltima.com/download/folx-update/folx3.xml'
  homepage 'http://mac.eltima.com/de/download-manager.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Folx 3.app'
end
