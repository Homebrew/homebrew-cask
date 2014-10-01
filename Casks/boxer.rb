class Boxer < Cask
  version :latest
  sha256 :no_check

  url 'http://boxerapp.com/download/latest'
  appcast 'http://boxerapp.com/appcast'
  homepage 'http://boxerapp.com/'
  license :unknown

  app 'Boxer.app'
end
