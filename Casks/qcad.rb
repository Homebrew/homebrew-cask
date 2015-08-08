cask :v1 => 'qcad' do
  version '3.9.8'
  sha256 '7e6f04d7989914bb3543f2eb64265453d9f26c98d7bd671b30bd71cf3ab07677'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'QCAD.app'
end
