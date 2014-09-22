class Macbreakz < Cask
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/MacBreakZ5.dmg'
  appcast 'http://www.publicspace.net/app/signed_mb5.xml'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app 'MacBreakZ 5.app'
end
