cask 'qcad' do
  version '3.12.4'
  sha256 'd2342b8d70e8d1e896698f9adce9502ef8efc5dbe7ba083eefbb2e3e1d5ad106'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.11.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'QCAD.app'
end
