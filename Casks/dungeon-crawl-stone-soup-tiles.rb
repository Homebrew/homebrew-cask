cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.20.1'
  sha256 '81bc57bb307b99d89dc8e5559ee8f30a5211b71eb162771ae07534c9f1d49948'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '957a105056d323391f7fb641d3b2443f87b02ec3fcc92eb15e3382bfac2a042c'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
