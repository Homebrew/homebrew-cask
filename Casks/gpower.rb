cask 'gpower' do
  version '3.1.9.2'
  sha256 'ee4eb27493959fc6614b6061829c6b7d2aee9edf0fe0c1bf3d143ee2fa74c3e6'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/',
          checkpoint: 'fa610445a677339329cd3bbc01b87151477859cbeed26dc70850bdb115782087'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
