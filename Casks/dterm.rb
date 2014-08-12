class Dterm < Cask
  version 'latest'
  sha256 :no_check

  url 'http://files.decimus.net/DTerm/DTerm.zip'
  appcast 'http://decimus.net/appcasts/DTerm.xml'
  homepage 'http://decimus.net/DTerm'

  link 'DTerm.app'
end
