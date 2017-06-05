cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.20.0'
  sha256 'cbb9b12d9b51ddd98e7bd312d917cdccefca45df54b5d413db56aa085d3a52bd'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '6a1a575e61b3cda7c6dd7bfab03a7c67a063e5dd95a74881b50368e9972d1591'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
