cask 'indigo-control-panel' do
  version '3.11'
  sha256 'a996ee1d72808640b4087c3589d3750b87d276af3fe3b625d2a4cb983bb3635a'

  url "http://download.cloudmakers.eu/INDIGO_Control_Panel_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/indicontrolpanel/'
  name 'INDIGO Control Panel'
  homepage 'http://www.cloudmakers.eu/indicontrolpanel/'

  app 'INDIGO Control Panel.app'
end
