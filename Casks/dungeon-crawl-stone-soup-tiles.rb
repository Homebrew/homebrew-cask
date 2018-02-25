cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.21.1'
  sha256 'f9f646e8293872d8f647a53da771f633f3f939833b601af6e6acddb942c63472'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '87d8536b2af9d3adeb1aeec0d72397767b80d96cc144ed912a1bbb3863cd5cd4'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
