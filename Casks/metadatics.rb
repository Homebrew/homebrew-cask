cask 'metadatics' do
  version '1.5.7'
  sha256 'c8baea464a742d35ca0793128d7d2606e59358b7f3e156ac7e7a27694db67927'

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: '19bdc4e350aa8e16f5170031425181eb88a465441a12816798533d34b6261814'
  name 'Metadatics'
  homepage 'https://markvapps.com/metadatics'

  app 'Metadatics.app'
end
