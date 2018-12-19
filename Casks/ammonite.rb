cask 'ammonite' do
  version '1.16.2'
  sha256 'fd61decd51cb36130ddbdd946d67bfa6a594cad5d298cbcf6d015e5604be60c0'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
