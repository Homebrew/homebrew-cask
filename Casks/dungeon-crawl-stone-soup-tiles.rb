cask :v1 => 'dungeon-crawl-stone-soup-tiles' do
  version '0.15.0'
  sha256 'b2a8abaebe84b3f25163a91a1905597e7de0dd1bf50de568b5d3d4d226b31e54'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
