class Screenmailer < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.screenmailer.com/download'
  appcast 'http://www.screenmailer.com/releases/current/releases.xml'
  homepage 'http://www.screenmailer.com'

  link 'Screenmailer.app'
end
