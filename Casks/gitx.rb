class Gitx < Cask
  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml'
  homepage 'http://gitx.frim.nl/'
  version 'latest'
  sha256 :no_check
  link 'GitX.app'
end
