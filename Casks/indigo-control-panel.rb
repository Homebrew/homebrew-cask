cask 'indigo-control-panel' do
  version '3.5'
  sha256 '4d1402b819e5b1d63bf5308ceab6e73f21fc8589859104f7704d419d15a35868'

  url "http://download.cloudmakers.eu/INDIGO_Control_Panel_#{version}.dmg"
  name 'INDIGO Control Panel'
  homepage 'http://www.cloudmakers.eu/indicontrolpanel/'

  app 'INDIGO Control Panel.app'
end
