cask 'a-better-finder-rename' do
  version '10.04'
  sha256 'a391b5b2f26aef589239472c7de4f0c404939dad237bdbb226fa0317f1037f05'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: 'd45f55620fe76452f8f1a6459c41132092b8c6c4c9af5fbcf1a241ab0221ea04'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
