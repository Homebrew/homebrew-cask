cask :v1 => 'dungeon-crawl-stone-soup-tiles' do
  version '0.16.1'
  sha256 '3fb69a2de46b051da86ad7c038ef91b8364a3c79ec8699c6120d2d041fe8bd6a'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macos.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
