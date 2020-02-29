cask 'gpower' do
  version '3.1.9.6'
  sha256 '841390e00110ccdd5201f334af985b54837b9f9b4ffb3151d49e28efb9bb3964'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
