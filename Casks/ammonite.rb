cask 'ammonite' do
  version '1.13.1'
  sha256 'b5ba6b3ec5dd2899fd64fda3b55d43590af8bc05ca502fb6be17722e2b2f46cc'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: '55642bf5d2fe63e3c36ef1e402e54331efc07459bc279bff4cd2e64473e57369'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
