cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.19.1'
  sha256 '4274e47ed18239ab73414be857c8a489d0acaf785467cffdc0b70d903a317402'

  url "https://crawl.develz.org/release/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '8e77d98e2f53d2d95fd2e2a2733f1032f8e5e81f99023b98d2e0b3a6531b60c4'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
