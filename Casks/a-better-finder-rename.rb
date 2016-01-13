cask 'a-better-finder-rename' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFRX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfr10.xml',
          :checkpoint => '8f78fde8f251d8ea30daeb958969d0ababb0bb40ef033c43f8261bac29cda323'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app 'A Better Finder Rename 10.app'
end
