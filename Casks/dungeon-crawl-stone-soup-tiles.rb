cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.22.0'
  sha256 '834ffe1a7de0a0164b43cbbee00ac870327b13c443b4d0fcf00f95d9e13c8fbb'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
