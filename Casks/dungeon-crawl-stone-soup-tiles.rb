cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.19.5'
  sha256 'cb6dbb50093c0e93124c3e52abb7440165a9312abe6535881742ca06a7057d77'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '4234b9bedc4b38b107b5ae7f46b41fc1c3f878ebe27e1ede96779b3a91b0cbc5'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
