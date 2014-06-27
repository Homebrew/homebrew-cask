class Beamer < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://beamer-app.com/download'
  appcast 'http://beamer-app.com/sparkle-appcast.xml'
  homepage 'http://beamer-app.com'

  link 'Beamer.app'
end
