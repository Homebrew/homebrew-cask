cask 'qcad' do
  version '3.17.3'
  sha256 'f5cf331d7151d669d359014ebff878c9bc5db8d70b09c7b034618a5546a53d82'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.12.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
