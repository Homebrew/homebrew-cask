cask 'qcad' do
  version '3.15.5'
  sha256 '70a96698259f9f07ca68ed6b2fa6cc5db1e28f9c83bd156d49a544afb34a8c6b'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.11.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
