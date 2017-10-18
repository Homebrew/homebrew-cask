cask 'golly' do
  version '3.0'
  sha256 '1540f8278d60e75aa13d908a9e8c2bb2f5c958720e03ebf2b33ed6469eb725a1'

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/golly/rss?path=/golly',
          checkpoint: '6550a211f72b108f5b7d1f5fc3cd02691d3da1ed755446fcf1e842cc3a0fc10d'
  name 'Golly'
  homepage 'http://golly.sourceforge.net/'

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
