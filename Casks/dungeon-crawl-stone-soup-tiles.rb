cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.19.4'
  sha256 '6c97a50ef9297580695606c2cbf14c8a778fe0ab8d9d6b7a89f1b9e72cbaacf1'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '0c90532523458c0c55ec1f5fb6077b1685ebd73b6615f5d45b60f7f6bc862932'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
