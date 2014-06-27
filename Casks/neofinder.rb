class Neofinder < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  homepage 'http://www.cdfinder.de'

  link 'NeoFinder.app'
end
