cask :v1 => 'appfresh' do
  version :latest
  sha256 :no_check

  url 'http://backend.metaquark.de/download/appfresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'
  license :unknown    # todo: improve this machine-generated value

  app 'appfresh.app'
end
