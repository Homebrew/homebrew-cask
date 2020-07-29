cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.25.0'
  sha256 '81034a2a22bab5d727d0c8e160e53b8b4e22d6cc76441bfc64455f61d870da5a'

  # github.com/crawl/crawl/releases was verified as official when first introduced to the cask
  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-tiles.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
