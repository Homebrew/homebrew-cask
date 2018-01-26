cask 'dungeon-crawl-stone-soup-tiles' do
  version '0.21.0'
  sha256 '2acb43ac451e579c67d360727c271086ad5f5391d92f52ef69df1bde9e515862'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-tiles-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: 'dd96d66f02bc77ccf322d3031ca3b8a59f3870901cd6013b9e2c915ecce7e1b6'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Tiles.app'
end
