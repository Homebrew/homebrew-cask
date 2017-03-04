cask 'indi-control-panel' do
  version '2.2'
  sha256 '93e7ad53810341ccbd649d9d47656aa7dae02c3c9dffaf041f2f4c4dbf0dc2d7'

  url "http://download.cloudmakers.eu/INDI_Control_Panel_#{version}.dmg"
  name 'INDI Control Panel'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Control Panel.app'
end
