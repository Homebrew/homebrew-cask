class Neofinder < Cask
  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  homepage 'http://www.cdfinder.de'
  version 'latest'
  sha256 :no_check
  link 'NeoFinder.app'
end
