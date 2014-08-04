class Bodega < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.appbodega.com.s3.amazonaws.com/bodega/latest/Bodega.zip'
  appcast 'https://dev.appbodega.com/sparkle/appcast'
  homepage 'http://appbodega.com/'

  link 'Bodega.app'
end
