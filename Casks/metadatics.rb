cask 'metadatics' do
  version '1.5.3'
  sha256 '65ce4d052ac526e73705350e1bafefca7cde5d5fb3872b14a08cc6d9c62f8e96'

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: '02ccedda9536d6f20470fb2e8e97dfeb6152a7b804e33dceef804b6626431db3'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
