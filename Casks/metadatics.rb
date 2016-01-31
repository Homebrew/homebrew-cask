cask 'metadatics' do
  version '1.5.4'
  sha256 'e002dd0bd0e50ce1a4c0db13eea64c959b1e01df5fda5a6ec19e3abca4103db5'

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: '690a7e2c2a65941963e309318a5937da26eecb825e86cb1f4bb2f4a2521b08d2'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
