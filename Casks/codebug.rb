class Codebug < Cask
  version 'latest'
  sha256 :no_check

  url 'http://codebugapp.com/downloads/Codebug.dmg'
  appcast 'http://codebugapp.com/update.xml'
  homepage 'http://www.codebugapp.com/'

  app 'Codebug.app'
end
