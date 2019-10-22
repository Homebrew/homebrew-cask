cask 'gpower' do
  version '3.1.9.4'
  sha256 'a423bfec96f532b9656af71cb8778aafac6c6c7c5d3a2114efab2fbb883107d2'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
