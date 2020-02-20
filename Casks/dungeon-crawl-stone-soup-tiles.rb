cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.24.0'
  sha256 'f95146f701d5412b73fdd7d0369e16fc3158ce70d3892ed603e953266bbe2d68'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
