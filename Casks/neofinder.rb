cask :v1 => 'neofinder' do
  version :latest
  sha256 :no_check

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
