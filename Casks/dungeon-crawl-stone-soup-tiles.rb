cask :v1 => 'dungeon-crawl-stone-soup-tiles' do
  version '0.16.2'
  sha256 '610b6c876c4704a343e066f5a9a1704c491fe25820707c7af66ebf3e6728ab61'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macos.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
