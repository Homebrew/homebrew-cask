cask 'a-better-finder-rename' do
  version '10.05'
  sha256 'da00a1148cca43cafd3f1fe9e5f5909ec90d1f0398ba02e00a834e22693170cf'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '96c3d39067ab206d72e66de98bc4e31379cc6a245d891bda4e8a04e133688c13'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
