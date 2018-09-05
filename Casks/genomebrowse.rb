cask 'genomebrowse' do
  version :latest
  sha256 :no_check

  url 'http://www.goldenhelix.com/download/GenomeBrowse/GenomeBrowse-MacOSX.dmg'
  name 'Genome Browse'
  homepage 'http://goldenhelix.com/products/GenomeBrowse/index.html'

  app 'GenomeBrowse.app'
end
