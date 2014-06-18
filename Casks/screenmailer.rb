class Screenmailer < Cask
  url 'http://www.screenmailer.com/download'
  appcast 'http://www.screenmailer.com/releases/current/releases.xml'
  homepage 'http://www.screenmailer.com'
  version 'latest'
  sha256 :no_check
  link 'Screenmailer.app'
end
