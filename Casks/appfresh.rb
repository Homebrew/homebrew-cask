class Appfresh < Cask
  version 'latest'
  sha256 :no_check

  url 'http://backend.metaquark.de/download/appfresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'

  link 'appfresh.app'
end
