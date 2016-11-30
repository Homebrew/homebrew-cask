cask 'indi-control-panel' do
  version '2.0'
  sha256 '065a338ceba09aceb840666cf043082056dd7636859e23251f77c4e26b0a7980'

  url "http://download.cloudmakers.eu/INDI_Control_Panel_#{version}.dmg"
  name 'INDI Control Panel'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Control Panel.app'
end
