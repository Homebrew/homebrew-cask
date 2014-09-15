class Moom < Cask
  version 'latest'
  sha256 :no_check

  url 'http://manytricks.com/download/moom'
  appcast 'http://manytricks.com/moom/appcast.xml'
  homepage 'http://manytricks.com/moom/'

  app 'Moom.app'
end
