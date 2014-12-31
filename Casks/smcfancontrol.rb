cask :v1 => 'smcfancontrol' do
  version '2.5.2'
  sha256 'e543b6a9fdb1bda6612699692f4dbaa9305007d451c987f2ae586950cbdf852b'

  url "http://www.eidac.de/smcfancontrol/smcfancontrol_#{version.gsub('.', '_')}.zip"
  appcast 'http://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          :sha256 => '031f140c1ad807c5799bee5818d7dd14601d8893e99883a90b421c13a05cce2a'
  homepage 'http://www.eidac.de/?cat=40'
  license :gpl

  app 'smcFanControl.app'
end
