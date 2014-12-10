cask :v1 => 'neofinder' do
  version :latest
  sha256 :no_check

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  homepage 'http://www.cdfinder.de'
  license :unknown    # todo: improve this machine-generated value

  app 'NeoFinder.app'
end
