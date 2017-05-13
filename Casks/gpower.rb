cask 'gpower' do
  version '3.1.9.2'
  sha256 'ee4eb27493959fc6614b6061829c6b7d2aee9edf0fe0c1bf3d143ee2fa74c3e6'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/',
          checkpoint: '3d30f9976dfc848cd099a3a1508f8214d87169cb7b889465dd5b890367ae9491'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
