cask 'a-better-finder-rename' do
  version '10.03'
  sha256 '3ea688fd6fbf6a75c719ad5a08caaad7191681ef252bc44c0df1b93e1f57a9e6'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '8f78fde8f251d8ea30daeb958969d0ababb0bb40ef033c43f8261bac29cda323'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
