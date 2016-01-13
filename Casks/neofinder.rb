cask 'neofinder' do
  version :latest
  sha256 :no_check

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          :checkpoint => '61a7348103f1c225a1dca738efd97d0a10a614854f57fbf667c55480dcbe10b7'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
