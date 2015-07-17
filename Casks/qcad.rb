cask :v1 => 'qcad' do
  version '3.9.5'
  sha256 '69c1ab1b8227192d20c625510f7bc5e69cfa8895229be15692362f50ac7b34ca'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  app 'QCAD.app'
end
