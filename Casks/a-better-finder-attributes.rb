cask 'a-better-finder-attributes' do
  version '5.35'
  sha256 '461291b23d2c074079251764eeb29e17605a932a1980c6282ce03b457a936202'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml',
          checkpoint: '772ff7de77c21bfc9a4ce1138b467baf0e81076bb26b237f055fcb0b13bdd1b1'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
