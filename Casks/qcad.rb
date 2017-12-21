cask 'qcad' do
  version '3.19.1'
  sha256 '0fe5b33be2c8055f1edfe817a306fa02bbf1c04a85d58244d2c9bb348a724cfd'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
