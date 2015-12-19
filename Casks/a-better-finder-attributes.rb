cask 'a-better-finder-attributes' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  name 'A Better Finder Attributes'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
