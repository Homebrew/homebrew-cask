class Appfresh < Cask
  url 'http://backend.metaquark.de/download/appfresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'
  version 'latest'
  sha256 :no_check
  link 'appfresh.app'
end
