class Base < Cask
  version 'latest'
  sha256 :no_check

  url 'http://menial.co.uk/base/download/'
  appcast 'http://update.menial.co.uk/software/base/'
  homepage 'http://menial.co.uk/base/'

  app 'Base.app'
end
