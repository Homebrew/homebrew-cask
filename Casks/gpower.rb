cask 'gpower' do
  version '3.1.9.3'
  sha256 'a905bd452edd6e0618ea5ab5dd16468010a92b676415a1fe57a9d0c9a7a2ac27'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/',
          checkpoint: 'a91685256dd3ea33a16b9a7ba66b72dd5a87a02e70fc8a677a1f6eb0f3230db1'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
