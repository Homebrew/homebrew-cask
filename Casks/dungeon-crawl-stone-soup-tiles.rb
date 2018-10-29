cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.22.1'
  sha256 '453a2f39a621952ea2600935402c4fca204020f95d497661879a1058f2bd4b27'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
