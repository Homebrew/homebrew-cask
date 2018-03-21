cask 'dungeon-crawl-stone-soup-console' do
  version '0.21.1'
  sha256 '43c3b8fbef69f801b223d2c8a0d9bcbd23e04369e8462d0f4bf389f84cdc9638'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '87d8536b2af9d3adeb1aeec0d72397767b80d96cc144ed912a1bbb3863cd5cd4'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
