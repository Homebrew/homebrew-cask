class Gimp < Cask
  version '2.8.10'
  sha256 'e93a84cd5eff4fe1c987c9c358f9de5c3532ee516bce3cd5206c073048cddba5'

  url "http://ftp.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}-dmg-1.dmg"
  homepage 'http://www.gimp.org'
  license :unknown

  app 'GIMP.app'
end
