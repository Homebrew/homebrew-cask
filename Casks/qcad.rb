cask :v1 => 'qcad' do
  version '3.9.6'
  sha256 '8554ea510430866359110d569b4c1dc1ae1f17e054eaac6aa40f37aba11adc90'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'QCAD.app'
end
