cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.19.0'
  sha256 'b2c9d2140c16069fd10d352162373180598a1b21dc493a8e3aa0843dec30af02'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
