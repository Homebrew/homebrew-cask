cask 'gpower' do
  version '3.1.9.3'
  sha256 'f851661a55993cacf4f255ebba79c185bd1186667345fe3b2d8aefd0436a5321'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/',
          checkpoint: 'e3b34cca13aa049cf00a93d9341df77d8bcf8e2bd2076cdae9509411d4561502'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
