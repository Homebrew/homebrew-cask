class ABetterFinderRename < Cask
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFRX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfr9.xml'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

  app 'A Better Finder Rename 9.app'
end
