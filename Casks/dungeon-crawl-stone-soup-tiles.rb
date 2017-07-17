cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.20.1'
  sha256 '81bc57bb307b99d89dc8e5559ee8f30a5211b71eb162771ae07534c9f1d49948'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '3c14c15c6218ff47d09578610b247ebcf514d3071a3a1b913fe0d1a2bd99cb73'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
