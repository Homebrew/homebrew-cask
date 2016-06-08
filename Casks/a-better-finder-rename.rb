cask 'a-better-finder-rename' do
  version '10.07'
  sha256 'be7e40b1e0365c28a4346b786e070282190504acee5f1bb9823fe7afb36851db'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '33c859d63db37e6513deb23bad8a77d730f06d64bb8ea0d4e97c67a520b5d114'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
