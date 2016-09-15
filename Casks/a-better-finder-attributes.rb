cask 'a-better-finder-attributes' do
  version '5.37'
  sha256 'ddfd2fb622fe2f09af0d7a49bb6ce8be976dafbeba4b5a9f2fd1a521660c3e91'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml',
          checkpoint: 'dc8554254c4f487d5c8171e7b5dbbfce02f813bb5e8916d6a73e7d33120e4442'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
