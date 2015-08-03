cask :v1 => 'qcad' do
  version '3.9.7'
  sha256 '8d625e74b01d921597c14a75cac6a07d1c03e50628761b3905b4cabeb7447353'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'QCAD.app'
end
