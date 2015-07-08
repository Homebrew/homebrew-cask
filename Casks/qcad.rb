cask :v1 => 'qcad' do
  version '3.9.4'
  sha256 '467933277d1df679bb2c2d0f0a0e5d222ad30a300a032d453de0683c5050f183'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  app 'QCAD.app'
end
