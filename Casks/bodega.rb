class Bodega < Cask
  url 'http://downloads.appbodega.com.s3.amazonaws.com/bodega/latest/Bodega.zip'
  appcast 'https://dev.appbodega.com/sparkle/appcast'
  homepage 'http://appbodega.com/'
  version 'latest'
  sha256 :no_check
  link 'Bodega.app'
end
