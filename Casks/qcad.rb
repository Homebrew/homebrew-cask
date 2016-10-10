cask 'qcad' do
  version '3.15.4'
  sha256 '2bd86c5b3057a6dbcb1b471e167ab850030fdd496ceca45c0c0eb93f4c3c64ca'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.11.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'QCAD.app'
end
