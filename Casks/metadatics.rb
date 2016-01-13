cask 'metadatics' do
  version :latest
  sha256 :no_check

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          :checkpoint => 'dd15e8dbbc8fa5479224534b19f6cb3166f5aed388f7caebad521e1f98b47317'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
