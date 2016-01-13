cask 'smcfancontrol' do
  version '2.5.2'
  sha256 'e543b6a9fdb1bda6612699692f4dbaa9305007d451c987f2ae586950cbdf852b'

  url "http://www.eidac.de/smcfancontrol/smcfancontrol_#{version.gsub('.', '_')}.zip"
  appcast 'http://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          :sha256 => '0d2842e77bd59abf47dda446d047d439008fe243c3b1a6c449e93f672349d1e8'
  name 'smcFanControl'
  homepage 'http://www.eidac.de/?cat=40'
  license :gpl

  app 'smcFanControl.app'
end
