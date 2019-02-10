cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.23.0'
  sha256 '7fba6134ed32bf4ec37966ca184eb905d0261ec3d0da841eaf4105bc6d5c38a0'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
