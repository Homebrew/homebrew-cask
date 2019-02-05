cask 'qcad' do
  version '3.21.3'
  sha256 'dbc0dff4d7106c686a7f3b9d1ed80de2e82bb64e7901b8fd7d42018d2e6a39cc'
  
  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.10-10.13.dmg"

  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
