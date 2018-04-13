cask 'qcad' do
  version '3.20.0'
  sha256 '656cc00a40a4fc142f990a1514b81a9725ed303cbe58c8166d8703e50a276495'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
