cask 'qcad' do
  version '3.17.2'
  sha256 'a49856a3371d4d309696023826244817f89ccce4e7c5a3b77f68c5d641d01546'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.12.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
