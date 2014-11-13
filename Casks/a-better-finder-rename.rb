cask :v1 => 'a-better-finder-rename' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/ABFRX.dmg'
  appcast 'http://www.publicspace.net/app/signed_abfr9.xml'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app 'A Better Finder Rename 9.app'
end
