cask 'rebol3' do
  version '2.101.0.2.40,gbf237fc'
  sha256 'a4e65efb42c97e91f4d780d52ab5d146644152c4fa590b3931df58fda09c7eb1'

  # rebolsource.net was verified as official when first introduced to the cask
  url "http://rebolsource.net/downloads/experimental/r3-osx-x64-#{version.after_comma}"
  name 'Rebol Programming Language, v3'
  homepage 'http://www.rebol.com/'

  container type: :naked

  binary "r3-osx-x64-#{version.after_comma}", target: 'r3'
end
