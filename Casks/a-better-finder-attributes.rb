cask 'a-better-finder-attributes' do
  version '5.36'
  sha256 'c832782e8082e3ca03ab183eb4dcab14132be13e35fac13708174772211f16a8'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml',
          checkpoint: '69f5290a982bad86445d04a983781edb7b36b28ddeb8d121a419873e0d0f841e'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
