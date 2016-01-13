cask 'neofinder' do
  version :latest
  sha256 :no_check

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          :checkpoint => 'd65ad22d2fb3e748acdd40108e411435870f96e8f7db4a7bd16f8642fcf2b69d'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
