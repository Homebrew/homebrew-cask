cask :v1 => 'dungeon-crawl-stone-soup-tiles' do
  version '0.16.0'
  sha256 '1e75166bedce080c74dc64c2389d5487e21f271251e7aab6916774c99529e01f'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
