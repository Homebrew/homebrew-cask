cask 'metadatics' do
  version :latest
  sha256 :no_check

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          :checkpoint => '02ccedda9536d6f20470fb2e8e97dfeb6152a7b804e33dceef804b6626431db3'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
