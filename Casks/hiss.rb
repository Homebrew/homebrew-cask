class Hiss < Cask
  version 'latest'
  sha256 :no_check

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml'
  homepage 'http://collect3.com.au/hiss/'

  app 'Hiss.app'
end
