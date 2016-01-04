cask 'a-better-finder-attributes' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfa5.xml',
          :sha256 => '787737e75cc0a7914ba2e454c3750e53908d05dd80c79235187c89d40bc07c6b'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'
  license :commercial

  app 'A Better Finder Attributes 5.app'
end
