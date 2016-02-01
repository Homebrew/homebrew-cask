cask 'neofinder' do
  version '6.8'
  sha256 'b410f7a14fc248a6de5f27bcdc5116a35e50c0b5f47204e4e2efb3284b54326b'

  url 'http://www.cdfinder.de/neofinder.zip'
  # apps.de verified as official when first introduced to the cask
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '61a7348103f1c225a1dca738efd97d0a10a614854f57fbf667c55480dcbe10b7'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
