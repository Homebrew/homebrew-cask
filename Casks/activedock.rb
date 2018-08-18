cask 'activedock' do
  version '152,1534506339'
  sha256 'cfbca91c29574fbd99ae06b96a9a1ae56e53109e9932e4971dceafcad91107af'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
