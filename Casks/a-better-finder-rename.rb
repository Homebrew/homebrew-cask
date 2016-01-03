cask 'a-better-finder-rename' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFRX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfr10.xml',
          :sha256 => '1f0457b0a280d86194117e2fd093cbcec0e56e50fdd80e5dc286a292506998d8'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app 'A Better Finder Rename 10.app'
end
