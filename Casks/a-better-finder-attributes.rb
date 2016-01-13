cask 'a-better-finder-attributes' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml',
          :sha256 => 'f640f80cb9b26bfaed5169c56718b7a72d48bda25148cbc1f1b9b68e30e2a8fa'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
