cask 'a-better-finder-rename' do
  version '10.09'
  sha256 '77458bde43118795ba7521ca0669a85a45f70436bae5817341b40d7c1a7310e4'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: 'a9820d0a539dd545497da8d24e2b631492c069c0495992bcee489b8731c666b1'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
