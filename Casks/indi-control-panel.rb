cask 'indi-control-panel' do
  version '2.3'
  sha256 'c2671bc8d8aef40638242aa3877474251b930a94ab47aa64327749af6f160279'

  url "http://download.cloudmakers.eu/INDI_Control_Panel_#{version}.dmg"
  name 'INDI Control Panel'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Control Panel.app'
end
