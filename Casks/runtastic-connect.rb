class RuntasticConnect < Cask
  url 'http://download.runtastic.com/connect/mac/runtasticConnect.dmg'
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml'
  homepage 'https://www.runtastic.com/connect'
  version 'latest'
  sha256 :no_check
  link 'Runtastic Connect.app'
end
