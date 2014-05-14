class Base < Cask
  url 'http://menial.co.uk/base/download/'
  appcast 'http://update.menial.co.uk/software/base/'
  homepage 'http://menial.co.uk/base/'
  version 'latest'
  sha256 :no_check
  link 'Base.app'
end
