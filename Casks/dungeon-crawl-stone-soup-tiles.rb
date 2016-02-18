cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.17.1-1'
  sha256 'ef6eb0e5a9fb3ab9a08f50a264eb10c0ab29ff7a114eeea5a841d4448ff1475c'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
