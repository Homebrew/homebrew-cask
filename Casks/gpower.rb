cask :v1 => 'gpower' do
  version '3.1.9.2'
  sha256 'ee4eb27493959fc6614b6061829c6b7d2aee9edf0fe0c1bf3d143ee2fa74c3e6'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  homepage 'http://www.gpower.hhu.de/'
  license :unknown    # todo: improve this machine-generated value

  app 'G*Power.app'
end
