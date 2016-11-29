cask 'a-better-finder-attributes' do
  version '6.0.1'
  sha256 '10d248b3580d8e48934c4e88d23a6f11f7b3d3a1de5114985b2999edf55b8da7'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: 'aaf2d4c359437a8ff03dc2008e2d41003ae0173e9acc7b358ee90f28a0477fc8'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"
end
