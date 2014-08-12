class Gitx < Cask
  version 'latest'
  sha256 :no_check

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml'
  homepage 'http://gitx.frim.nl/'

  link 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
