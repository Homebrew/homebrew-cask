cask :v1 => 'appfresh' do
  version :latest
  sha256 :no_check

  url 'http://backend.metaquark.de/download/appfresh'
  name 'AppFresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'appfresh.app'
end
