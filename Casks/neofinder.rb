cask 'neofinder' do
  version '6.9.2'
  sha256 '23fded88823d1f61f623a49f9ec8861763ace2d64f97c211061cad852de1b2ea'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: 'd3b143f813089118dfd45272219433bc983b756d6c0b8e0d574f94cc3d33559c'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
