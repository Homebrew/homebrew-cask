cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.19.5'
  sha256 'cb6dbb50093c0e93124c3e52abb7440165a9312abe6535881742ca06a7057d77'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '0c07525c67a2cc50b4dc881e5ba2309a02f784fd74375530d3a852abbe5f5f24'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
