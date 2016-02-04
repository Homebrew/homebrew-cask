cask 'metadatics' do
  version '1.5.5'
  sha256 '5cedee6b91e1783946cdb87c457f448cad2550be17ae41b6b9231ce9cde413d8'

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: 'afba724f4a40692b4973f972c639be5dc81b78cf1034e2c0632cf0e2bddebf4b'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
