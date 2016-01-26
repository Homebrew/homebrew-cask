cask 'smcfancontrol' do
  version '2.5.2'
  sha256 'e543b6a9fdb1bda6612699692f4dbaa9305007d451c987f2ae586950cbdf852b'

  url "http://www.eidac.de/smcfancontrol/smcfancontrol_#{version.gsub('.', '_')}.zip"
  appcast 'http://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          checkpoint: '02ee10ec262f518ad8e099fe4230b78235d48ed26729c5ccd2241fe2d6291881'
  name 'smcFanControl'
  homepage 'http://www.eidac.de/?cat=40'
  license :gpl

  app 'smcFanControl.app'
end
