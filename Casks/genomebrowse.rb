cask 'genomebrowse' do
  version '2.1.1'
  sha256 '8f24f384dfc14df5cc6076eb2e200b4dfc0df74d25928718082076ae7eec2161'

  url 'http://www.goldenhelix.com/download/GenomeBrowse/GenomeBrowse-MacOSX.dmg'
  name 'Genome Browse'
  homepage 'http://goldenhelix.com/products/GenomeBrowse/index.html'
  license :other

  app 'GenomeBrowse.app'
end
