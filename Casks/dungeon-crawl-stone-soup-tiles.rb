cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.23.2'
  sha256 '6ba47351b14a57be65d3c631013d6ed828c9badaf07956f4b3ff2d0461ed4f9a'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
