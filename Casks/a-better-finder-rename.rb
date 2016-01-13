cask 'a-better-finder-rename' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFRX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfr10.xml',
          :sha256 => '7f6769bd083c2f4c2fa05cc70e756eff9b9168ac6d2bd33c8dd98064010c25c0'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app 'A Better Finder Rename 10.app'
end
