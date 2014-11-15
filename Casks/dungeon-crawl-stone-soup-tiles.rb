cask :v1 => 'dungeon-crawl-stone-soup-tiles' do
  version '0.14.0'
  sha256 '0cd2b2a7cf8675a208889ae406e6992c2a4c056ff05a974edfb99fd7a9e77e79'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  homepage 'http://crawl.develz.org'
  license :unknown

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
